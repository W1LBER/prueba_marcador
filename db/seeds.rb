# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Type.create(
  name: 'Sitios'
)

Type.create(
  name: 'Ventas'
)

Category.create(
  name:'Foros'
)

Category.create(
  name: 'Vehiculos'
)

Subcategory.create(
  name: 'Auto',
  category_id:2
)

Subcategory.create(
  name: 'Motos',
  category_id:2
)




Subcategory.create(
  name: 'Medicina',
  category_id: 1
)

Subcategory.create(
  name: 'Juegos',
  category_id: 1
)

Subcategory.create(
  name: 'Carros',
  category_id: 1
)

20.times do 
  Bookmark.create(
    name: Faker::Lorem.sentence(word_count: 3, supplemental: true),
    url:Faker::Internet.domain_name,
    subcategory_id: rand(1..Subcategory.count),
    type_id: rand(1..Type.count)
  )
end


