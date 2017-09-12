Product.destroy_all
Catalogue.destroy_all

catalogue = Catalogue.create!()

product1 = Product.create!(name: "ID 12345670", description: "This is the id of Mimi who'se 40 years old.", price: 100, image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", catalogue: catalogue)
product2 = Product.create!(name: "ID 12345671", description: "This is the id of Ciyuxu who'se 40 years old.", price: 120, image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", catalogue: catalogue)
product3 = Product.create!(name: "ID 12345672", description: "This is the id of Jason who'se 40 years old.", price: 200.80, image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", catalogue: catalogue)
product4 = Product.create!(name: "ID 12345673", description: "This is the id of Eva who'se 40 years old.", price: 199.99, image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", catalogue: catalogue)
product5 = Product.create!(name: "ID 12345674", description: "This is the id of Matthijs who'se 40 years old.", price: 20, image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505217667/jpg_yzwzgh.jpg", catalogue: catalogue)

user1 = User.create!(email: "dark_person@idark.com", password: "12345678")
