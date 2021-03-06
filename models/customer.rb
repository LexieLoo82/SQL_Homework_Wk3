require_relative('../db/sql_runner')

class Customer

attr_reader :id
attr_accessor :name, :funds

def initialize(options)
  @id = options['id'].to_i if options['id']
  @name = options['name']
  @funds = options['funds'].to_i
end

def save()
  sql = "INSERT INTO customers (name, funds)
  VALUES ($1, $2)
  RETURNING id"
  values = [@name, @funds]
  customer = SqlRunner.run(sql, values).first
  @id = customer['id'].to_i
end

def self.all()
  sql = "SELECT * FROM customers"
  customers = SqlRunner.run(sql)
  result = customers.map{ |customer| Customer.new(customer)}
return result
end

def update()
sql = "UPDATE customers SET (name, funds) = ($1, $2) WHERE id = $3"
values = [@name, @funds, @id]
SqlRunner.run(sql, values)
end

def self.delete_all()
  sql = "DELETE FROM customers"
  SqlRunner.run(sql)
end

#shows films a customer is booked to see.
def films()
  sql = "SELECT films.* FROM films
  INNER JOIN tickets
  ON tickets.film_id = films.id
  WHERE customer_id = $1"
  values = [@id]
  films = SqlRunner.run(sql, values)
  result = films.map{ |film| Film.new(film)}
  return result
end

def buy_ticket(film)
   new_ticket = Ticket.new({'customer_id' => @id, 'film_id' => film.id})
   new_ticket.save
   @funds -= film.price
 end



end
