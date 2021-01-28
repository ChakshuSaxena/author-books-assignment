# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "=====Creating author1===="
a1 = Author.create(first_name: 'a1', last_name: 'k1',date_of_birth: Date.today - 10.years)
puts "=====Creating author2===="
a2 = Author.create(first_name: 'a2', last_name: 'k2',date_of_birth: Date.today - 9.years)
puts "=====Creating author3===="
a3 = Author.create(first_name: 'a3', last_name: 'k3',date_of_birth: Date.today - 8.years)
puts "=====Creating author4===="
a4 = Author.create(first_name: 'a4', last_name: 'k4',date_of_birth: Date.today - 7.years)
puts "=====Creating author5===="
a5 = Author.create(first_name: 'a5', last_name: 'k5',date_of_birth: Date.today - 6.years)

puts "=====Creating Book1===="
b1 = Book.create(title: 'book_1')
b1.authors << [a1, a2]
puts "=====Creating Book2===="
b2 = Book.create(title: 'book_2')
b2.authors << [a2, a3]
puts "=====Creating Book3===="
b3 = Book.create(title: 'book_3')
b3.authors << [a3, a4]
puts "=====Creating Book4===="
b4 = Book.create(title: 'book_4')
b4.authors << [a4, a5]