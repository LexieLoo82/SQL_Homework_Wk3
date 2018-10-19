require_relative('models/customer')
require_relative('models/ticket')
require_relative('models/film')
require('pry-byebug')

Customer.delete()


customer1 = Customer.new('name' => 'Angie', 'funds' => '200')
customer1.save()
customer2 = Customer.new('name' => 'Julia', 'funds' => '150')
customer2.save()
customer3 = Customer.new('name' => 'Alex', 'funds' => '20')
customer3.save()
customer4 = Customer.new('name' => 'Robin', 'funds' => '45')
customer4.save()

customer1.funds = "120"
customer1.update()


binding.pry
nil
