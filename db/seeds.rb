# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "destroying all pets"
Pet.destroy_all

puts "destroying all users"
User.destroy_all
User.create(name: "Henry", open_id: "lakdsjfalds")
puts User.first.id

5.times do
  puts User.first.id
  pet = Pet.create(
    name: Faker::Creature::Dog.name,
    breed: Faker::Creature::Dog.breed,
    gender: Faker::Creature::Dog.gender,
    age: rand(1..5),
    image_url: [
      "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&w=800",
      "https://images.pexels.com/photos/2023384/pexels-photo-2023384.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "https://images.unsplash.com/photo-1587402092301-725e37c70fd8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1364&q=80",
      "https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1000w,f_auto,q_auto:best/rockcms/2022-08/220805-border-collie-play-mn-1100-82d2f1.jpg",
      "https://kb.rspca.org.au/wp-content/uploads/2018/11/golder-retriever-puppy.jpeg"
    ].sample,
    user_id: 1
  )
end
