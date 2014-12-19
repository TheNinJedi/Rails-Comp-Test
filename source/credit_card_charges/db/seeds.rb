# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Create Customers
	Customer.create(
									first_name: 'Johny',
									last_name: 'Flow',
									id: 1
									)

	Customer.create(
									first_name: 'Raj',
									last_name: 'Jamnis',
									id: 2
									)

	Customer.create(
									first_name: 'Andrew',
									last_name: 'Chung',
									id: 3
									)

	Customer.create(
									first_name: 'Mike',
									last_name: 'Smith',
									id: 4
									)

#Create Transactions
##Successful Transactions
	5.times do
		Charge.create(
									customer_id: 1,
									paid: true,
									amount: rand(1000..10000),
									currency: 'usd'
									)
	end

	3.times do
		Charge.create(
									customer_id: 2,
									paid: true,
									amount: rand(1000..10000),
									currency: 'usd'
									)
	end

	Charge.create(
								customer_id: 3,
								paid: true,
								amount: rand(1000..10000),
								currency: 'usd'
								)

	Charge.create(
								customer_id: 4,
								paid: true,
								amount: rand(1000..10000),
								currency: 'usd'
								)

##Failed Transactions
	3.times do
		Charge.create(
									customer_id: 3,
									paid: false,
									amount: rand(1000..10000),
									currency: 'usd'
									)
	end

	2.times do
		Charge.create(
									customer_id: 4,
									paid: false,
									amount: rand(1000..10000),
									currency: 'usd'
									)
	end
##Disputed Transactions
	3.times do
		Charge.create(
									customer_id: 1,
									disputed: true,
									amount: rand(1000..10000),
									currency: 'usd'
									)
	end

	2.times do
		Charge.create(
									customer_id: 2,
									disputed: true,
									amount: rand(1000..10000),
									currency: 'usd'
									)
	end