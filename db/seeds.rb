# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Criando clientes, autores e categorias..."
10.times do |i|
    Client.create(name: Faker::Name.name)
    Author.create(name: Faker::Book.author)
    Category.create(name: Faker::Book.genre)
end
puts "Criando clientes, autores e categorias... [OK]"

puts "Criando livros..."
10.times do |i|
    Book.create(name: Faker::Book.title, stock: Random.rand(1..10), author: Author.all.sample, category: Category.all.sample)
end
puts "Criando livros... [OK]"

puts "Criando bibliotecários..."
senha = Random.rand(100000..999999)
Librarian.create(email: Faker::Internet.email, password: senha, password_confirmation: senha)
puts "Criando bibliotecários... [OK]  (email: #{Librarian.last.email}, senha: #{senha})"

puts "Criando reservas..."
5.times do |i|
    Reservation.create(book: Book.all.sample, client: Client.all.sample, librarian: Librarian.all.sample)
end
puts "Criando reservas... [OK]"