require_relative('models/customer')
require_relative('models/ticket')
require_relative('models/film')


require('pry-byebug')


customer1 = Customer.new('name' => 'Angie', 'funds' => '200')
customer1.save()
customer2 = Customer.new('name' => 'Julia', 'funds' => '150')
customer2.save()



binding.pry
nil
