# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

Item.create(name: 'TV', detail: 'lcd tv', id: 1, category_id: 10, image: 'image', price:56000)
Category.create(name: 'Electronics', id: 10)
