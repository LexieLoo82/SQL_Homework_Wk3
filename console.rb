require_relative('models/customer')
require_relative('models/ticket')
require_relative('models/film')
require_relative('models/screenings')

require('pry-byebug')

Customer.delete_all()
Film.delete_all()
Ticket.delete_all()

customer1 = Customer.new('name' => 'Angie', 'funds' => '200')
customer1.save()
customer2 = Customer.new('name' => 'Julia', 'funds' => '150')
customer2.save()
customer3 = Customer.new('name' => 'Alex', 'funds' => '20')
customer3.save()
customer4 = Customer.new('name' => 'Robin', 'funds' => '45')
customer4.save()


film1 = Film.new('title' => 'The Fellowship of the Ring', 'price' => '15')
film1.save()
film2 = Film.new('title' => 'The Hobbit', 'price' => '15')
film2.save()
film3 = Film.new('title' => 'Churchill', 'price' => '15')
film3.save()
film4 = Film.new('title' => 'Halloween', 'price' => '15')
film4.save()
# film2.title = 'The Hobbit: An Unexpected Journey'
# film2.update

ticket1 = Ticket.new('film_id' => film1.id, 'customer_id' => customer2.id)
ticket1.save()
ticket2 = Ticket.new('film_id' => film2.id, 'customer_id' => customer1.id)
ticket2.save()
ticket3 = Ticket.new('film_id' => film1.id, 'customer_id' => customer3.id)
ticket3.save()
ticket4 = Ticket.new('film_id' => film3.id, 'customer_id' => customer4.id)
ticket4.save()


screening1 = Screening.new('screening_time' => '8.00pm', 'film_id' => film1.id)
screening1.save()
screening2 = Screening.new('screening_time' => '8.30pm', 'film_id' => film2.id)
screening2.save()
screening3 = Screening.new('screening_time' => '9.30pm', 'film_id' => film3.id)
screening3.save()


# ticket1.film_id = film4.id
# ticket1.update()

# customer2.buy_tickets(film2)
# Ticket.customers()


binding.pry
nil
