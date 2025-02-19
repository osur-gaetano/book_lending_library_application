# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

book_data = [
  { title: "Ruby on Rails Guide", isbn: "978-1-234567-01", status: "available", author: "David Heinemeier Hansson" },
  { title: "The Pragmatic Programmer", isbn: "978-1-234567-02", status: "available", author: "Andrew Hunt" },
  { title: "Clean Code", isbn: "978-1-234567-03", status: "available", author: "Robert C. Martin" },
  { title: "Eloquent Ruby", isbn: "978-1-234567-04", status: "available", author: "Russ Olsen" },
  { title: "Agile Web Development with Rails", isbn: "978-1-234567-05", status: "available", author: "Sam Ruby" },
  { title: "Design Patterns in Ruby", isbn: "978-1-234567-06", status: "available", author: "Russ Olsen" },
  { title: "Metaprogramming Ruby", isbn: "978-1-234567-07", status: "available", author: "Paolo Perrotta" },
  { title: "Programming Ruby 1.9 & 2.0", isbn: "978-1-234567-08", status: "available", author: "Dave Thomas" },
  { title: "Rails AntiPatterns", isbn: "978-1-234567-09", status: "available", author: "Chad Pytel" },
  { title: "Effective Testing with RSpec 3", isbn: "978-1-234567-10", status: "available", author: "Myron Marston" }
]

book_data.each do |book|
  Book.find_or_create_by!(isbn: book[:isbn]) do |b|
    b.title = book[:title]
    b.status = book[:status]
    b.author = book[:author]
  end
end

puts "✅ Seeded #{Book.count} books successfully!"
