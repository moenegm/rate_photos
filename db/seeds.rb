# This file should contain all the record creation needed to seed the database with its default values.
# Thedtghgsdhdvzxv can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = User.create!(first_name: "admin", last_name: "Boss", email: "admin@test.com", password: "password", admin: true)
admin.avatar.attach(io: File.open(Rails.root.join('app/assets/images/admin.webp')), filename: 'admin.webp')

user_1 = User.create!(first_name: "user1", last_name: "user11", verified: true, email: "user1@test.com", password: "password")
user_1.avatar.attach(io: File.open(Rails.root.join('app/assets/images/user_1.jpeg')), filename: 'user_1.jpeg')

user_2 = User.create!(first_name: "user2", last_name: "user22", verified: true, email: "user2@test.com", password: "password")
user_2.avatar.attach(io: File.open(Rails.root.join('app/assets/images/user_2.jpeg')), filename: 'user_2.jpeg')

user_3 = User.create!(first_name: "user3", last_name: "user33", email: "user3@test.com", password: "password")
user_3.avatar.attach(io: File.open(Rails.root.join('app/assets/images/user_3.webp')), filename: 'user_3.webp')

user_4 = User.create!(first_name: "user4", last_name: "user44", email: "user4@test.com", password: "password")
user_4.avatar.attach(io: File.open(Rails.root.join('app/assets/images/user_4.webp')), filename: 'user_4.webp')

user_5 = User.create!(first_name: "user5", last_name: "user55", email: "user5@test.com", password: "password")

user_1_post = Post.new(name:"post1", iso: "1", shutter_speed: "1", appature: "1", composition: "1", location: "1", description: "1", user_id:user_1.id)
user_1_post.image.attach(io: File.open(Rails.root.join('app/assets/images/user_1.jpeg')), filename: 'user_1.jpeg')
user_1_post.save

user_2_post = Post.new(name:"post2", iso: "2", shutter_speed: "2", appature: "2", composition: "2", location: "2", description: "2", user_id:user_2.id)
user_2_post.image.attach(io: File.open(Rails.root.join('app/assets/images/user_2.jpeg')), filename: 'user_2.jpeg')
user_2_post.save

user_3_post = Post.new(name:"post3", iso: "3", shutter_speed: "3", appature: "3", composition: "3", location: "3", description: "3", user_id:user_3.id)
user_3_post.image.attach(io: File.open(Rails.root.join('app/assets/images/user_3.webp')), filename: 'user_3.webp')
user_3_post.save

user_4_post = Post.new(name:"post4", iso: "4", shutter_speed: "4", appature: "4", composition: "4", location: "4", description: "4", user_id:user_4.id)
user_4_post.image.attach(io: File.open(Rails.root.join('app/assets/images/user_4.webp')), filename: 'user_4.webp')
user_4_post.save