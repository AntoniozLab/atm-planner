# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Ejecuta todos los archivos seed dentro del directorio "./seeds"
Dir[File.join(Rails.root, 'db', 'seeds', '*_seeds.rb')].sort.each do |seed|
  require seed
  # load seed
end


# Usuarios Gestor
# user_2 = User.create(name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email(separators:'_', domain: 'gmail'), encrypted_password: '123456', code: 'u2');
# user_3 = User.create(name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email(separators:'_', domain: 'gmail'), encrypted_password: '123456', code: 'u3');
# user_4 = User.create(name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email(separators:'_', domain: 'gmail'), encrypted_password: '123456', code: 'u4');
# user_5 = User.create(name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email(separators:'_', domain: 'gmail'), encrypted_password: '123456', code: 'u5');
