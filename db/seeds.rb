# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "deleting all users"
puts "creating a user" #没有user主人就不能创造宠物
User.create(name: "Henry", open_id: "blahblahblahblah")

puts "deleting all pets"
Pet.destroy_all

puts "Creating pets"
Pet.create(
  name: "Heizi",
  animal: "dog",
  breed: "Schnoodle",
  gender: "Male",
  user_id: 1,
  age: 4,
  image_url:"https://userblink.csdnimg.cn/48787086739948f8ad8fd6ee99a3abdd.jpeg"
)

Pet.create(
  name: "Haha",
  animal: "dog",
  breed: "GSD hybrids",
  gender: "Female",
  user_id: 1,
  age: 3,
  image_url:"https://userblink.csdnimg.cn/a815b2e6fe8e47b3bfa70e9839fe14be.jpeg"
)

Pet.create(
  name: "Nicky",
  animal: "dog",
  breed: "Terriers",
  gender: "Female",
  user_id: 1,
  age: 1,
  image_url:"https://userblink.csdnimg.cn/b6361b43e3104d69a99d5578831a8807.jpeg"
)

Pet.create(
  name: "Guapi",
  animal: "cat",
  breed: "Li-hua",
  gender: "Female",
  user_id: 1,
  age: 6,
  image_url:"https://images.unsplash.com/photo-1543852786-1cf6624b9987?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"
)

Pet.create(
  name: "Lolo",
  animal: "Dog",
  breed: "Li-hua",
  gender: "Female",
  user_id: 1,
  age: 3,
  image_url:"https://userblink.csdnimg.cn/59cc1dadd575472bb276eea14f7d8edf.jpeg"
)
Pet.create(
  name: "Henry",
  animal: "Panda",
  breed: "Panda",
  gender: "Male",
  user_id: 1,
  age: 3,
  image_url:"https://images.unsplash.com/photo-1570288685369-f7305163d0e3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80"
)
Pet.create(
  name: "Happy",
  animal: "Rabbit",
  breed: "Rabbit",
  gender: "Male",
  user_id: 1,
  age: 2,
  image_url:"https://images.unsplash.com/photo-1518796745738-41048802f99a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80"
)
Pet.create(
  name: "Yaya",
  animal: "Duck",
  breed: "Duck",
  gender: "Female",
  user_id: 1,
  age: 1,
  image_url:"https://images.unsplash.com/photo-1563409236302-8442b5e644df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80"
)
Pet.create(
  name: "Cheese",
  animal: "Snake",
  breed: "Snake",
  gender: "Female",
  user_id: 1,
  age: 1,
  image_url:"https://images.unsplash.com/photo-1531386151447-fd76ad50012f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c25ha2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"
)

puts "Pets created!"
