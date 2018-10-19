require_relative('models/customer')
require_relative('models/ticket')
require_relative('models/film')

require('pry-byebug')

Customer.delete_all()
Film.delete_all()


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


binding.pry
nil
