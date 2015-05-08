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

tv_details = <<-D
HD Ready, 1366 x 768,
2 x HDMI, 1 x USB
D

microwave_details = <<-D
Power Output : 900 W
Auto Cook Menu : 151
Controls : Tact (Buttons)
D

chair_details = <<-D
Coleman Broadband Quad Chair
D

table_details = <<-D
Wooden
Height - 15.24 cm
Width - 30.48 cm
Weight - 2100 g
D

t_shirt_details = <<-D
Weardo Solid Men's Polo T-Shirt
D

jeans_details = <<-D
Coaster Slim Fit Men's Jeans
Mid Rise
Light Blue
D


Item.create(id: 1, name: 'TV', detail: tv_details, image:  image_to_encoded_string('./public/images/tv.jpeg'), price:5600, category_id: 10)
Item.create(id: 2, name: 'Microwave', detail: microwave_details, image:  image_to_encoded_string('./public/images/microwave.jpeg'), price:4000, category_id: 10)

Item.create(id: 3, name: 'Chair', detail: chair_details, image:  image_to_encoded_string('./public/images/chair.jpeg'), price:1000, category_id: 20)
Item.create(id: 4, name: 'Table', detail: table_details, image:  image_to_encoded_string('./public/images/table.jpeg'), price:5000, category_id: 20)

Item.create(id: 5, name: 'T-Shirt', detail: t_shirt_details, image:  image_to_encoded_string('./public/images/t_shirt.jpeg'), price:1500, category_id: 30)
Item.create(id: 6, name: 'Jeans', detail: jeans_details, image:  image_to_encoded_string('./public/images/jeans.jpeg'), price:800, category_id: 30)

Category.create(name: 'Electronics', id: 10)
Category.create(name: 'Furniture', id: 20)
Category.create(name: 'Clothing', id: 30)
