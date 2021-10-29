# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
City.destroy_all
Lodgment.destroy_all
Reservation.destroy_all

user1 = User.create(name:"toto",email:"toto@titi.fr",phone_number:"0584758596",description:"coucou c'est moi")
city1 = City.create(name:"Paris",zip_code:"75000")
lodgment1 = Lodgment.create(beds_nb:6,price:200,description:"super logement",has_wifi:true,welcom_message:"bienvenue les amis",city:city1,owner:user1)

User.create(email:"toto@titi.fr",phone_number:"0584758596",description:"coucou c'est moi")
City.create(name:"Paris",zip_code:"75000")
Lodgment.create(beds_nb:6,price:200,description:"super logement",has_wifi:true,welcom_message:"bienvenue les amis",city:city1)
Reservation.create(start_date:DateTime.current.to_date, duration:2,guest:user1,rented_lodgment:lodgment1)

cities_array = [["Nice","06000"], ["Marseille","13000"], ["Paris","75000"], ["Lyon","69000"], ["Toulouse","20000"], ["Strasbourg","60000"], ["Menton","06500"], ["Cannes", "06800"], ["Toulon","83000"], ["Bordeaux","25000"]]

cities_array.each do |index|

  # City.create(name:cities_array[index][0],zip_code:cities_array[index][1])

end