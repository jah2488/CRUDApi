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
require File.expand_path('../../config/environment',  __FILE__)
Dir.foreach(Rails.root.join('app', 'models')) do |model_path|
  puts model_path
  require model_path if model_path.include?('.rb')
end
puts ActiveRecord::Base.descendants.inspect

20.times do
  user_class = Object.const_get("User")
  user_class.create({
    first_name:  Faker::Name.first_name,
    last_name:   Faker::Name.last_name,
    age:         Faker::Number.between(18, 99),
  })

  user = User.create({
    first_name:  Faker::Name.first_name,
    last_name:   Faker::Name.last_name,
    age:         Faker::Number.between(18, 99),
  })
  Address.create({
    user_id:     user.id,
    street_name: Faker::Address.street_address,
    city:        Faker::Address.city,
    state:       Faker::Address.state,
    zip:         Faker::Address.zip,
  })
end


40.times do
  item = Item.create({
    name:            Faker::Commerce.product_name,
    price:           Faker::Number.between(1, 25),
    description:     Faker::Commerce.department,
  })
  Order.create({
    user_id:   Faker::Number.between(1,20),
    item_id:   item.id,
    quantity:  Faker::Number.between(1,10),
  })
end
