# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
User.create(email: 'radhika.kancharla@gmail.com', password: 'radhika123', color:'#76D7C4', photo: 'https://static.pexels.com/photos/207962/pexels-photo-207962.jpeg')
User.create(email: 'sam@aol.com', password: 'radhika123', color:'#EB984E', photo: 'https://static.pexels.com/photos/132037/pexels-photo-132037.jpeg')
User.create(email: 'bob@aol.com', password: 'radhika123', color:'#C39BD3', photo: 'http://www.istockphoto.com/resources/images/PhotoFTLP/img_67920257.jpg')
