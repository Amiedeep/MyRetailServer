# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#


def image_to_encoded_string(image)
  Base64.encode64(File.open(image, "rb") {|io| io.read})
end


Item.create(id: 1, name: 'TV', detail: 'lcd tv', image:  image_to_encoded_string('./public/images/tv.jpeg'), price:5600, category_id: 10)
Item.create(id: 2, name: 'Microwave', detail: 'microwave', image:  image_to_encoded_string('./public/images/microwave.jpeg'), price:4000, category_id: 10)

Item.create(id: 3, name: 'Chair', detail: 'Chair', image:  image_to_encoded_string('./public/images/chair.jpeg'), price:1000, category_id: 20)
Item.create(id: 4, name: 'Table', detail: 'Table', image:  image_to_encoded_string('./public/images/table.jpeg'), price:5000, category_id: 20)

Item.create(id: 5, name: 'T-Shirt', detail: 't-shirt', image:  image_to_encoded_string('./public/images/t_shirt.jpeg'), price:1500, category_id: 30)
Item.create(id: 6, name: 'Jeans', detail: 'jeans', image:  image_to_encoded_string('./public/images/jeans.jpeg'), price:800, category_id: 30)

Category.create(name: 'Electronics', id: 10)
Category.create(name: 'Furniture', id: 20)
Category.create(name: 'Cloths', id: 30)
