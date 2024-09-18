# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Faker::Config.locale = 'pt-BR'

10.times do
  Course.create(
    title: Faker::Job.title,
    description: Faker::Job.field,
    start_date: Faker::Date.between(from: 2.days.ago, to: Date.today).strftime('%d/%m/%Y'),
    end_date: Faker::Date.between(from: Date.today, to: 1.year.from_now).strftime('%d/%m/%Y')
  )
end
