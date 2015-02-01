# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Transaction.delete_all
Category.delete_all


groceries = Category.create!(name: "Groceries")
Category.create!(name: "Rent")
Category.create!(name: "Utilities")
Category.create!(name: "Living Expenses")
Category.create!(name: "Gas")
Category.create!(name: "Car")
Category.create!(name: "Eating Out")
Category.create!(name: "Transportation")
Category.create!(name: "Other")

Transaction.create!(amount: 40.00, category: groceries)

