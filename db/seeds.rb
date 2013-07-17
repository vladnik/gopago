# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

books = <<TEXT
Indian Camp
The Sun Also Rises
A Farewell to Arms
The Short Happy Life of Francis Macomber
For Whom the Bell Tolls
The Old Man and the Sea
A Moveable Feast
True at First Light
TEXT

books.each_line do |title|
  Book.create(title: title)
end