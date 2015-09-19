# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# def random_gpa
#   (0.0..4.0).step(0.2).to_a.map { |n| n.round(2) }.sample
# end

# %w(Rails Javascript Design iOS Python Java .NET).each do |course_name|
#   Course.create(name: course_name)
# end

# Course.all.each do |course|
#   5.times do
#     Student.create({
#       first_name: Faker::Name.first_name,
#       last_name: Faker::Name.last_name,
#       gpa: random_gpa,
#       course_id: course.id
#     })
#   end
# end

 10.times do
   user = User.create({
     first_name:  Faker::Name.first_name,
     last_name:   Faker::Name.last_name,
     age:         Faker::Number(2),
   })
   Address.create({             #for each user(lowercase) assign an Address
      user_id:     user.id,
      street_name: Faker::Address.street_address,
      city:        Faker::Address.city,
      state:       Faker::Address.state,
      zip:         Faker::Address.zip,
    })
  end


  20.times do
    item = Item.create({
      name:     Faker::Commerce.product_name,
      price:    Faker::Number.between(1, 345),
      desc:     Faker::Commerce.color,
      })
    Order.create({
      user_id:   Faker::Number.between(1,30),
      item_id:   item.id,
      qty:       Faker::Number.between(1,10),
    })
  end
