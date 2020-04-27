# Usuario administrador
user_admin = User.new(
  name: 'José Luis',
  last_name: 'Sánchez',
  email: 'admin@atmplanner.com',
  password: '123456',
  password_confirmation: '123456',
  code: 'a1',
  admin: 1,
  profile_id: $profile_gestor.id);

user_admin.save!

# Genera 5 usuarios con perfil "comercial"
$counter = 1;
5.times do

  user_admin = User.new(
    name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email(separators:'_', domain: 'comercial'),
    password: '123456',
    password_confirmation: '123456',
    code: 'c' + $counter.to_s,
    admin: 0,
    profile_id: $profile_comercial.id);


  $counter += 1;
  user_admin.save!
end


# Genera 5 usuarios con perfil "Proveedor"
$counter = 1;
5.times do

  user_admin = User.new(
    name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email(separators:'_', domain: 'proveedor'),
    password: '123456',
    password_confirmation: '123456',
    code: 'p' + $counter.to_s,
    admin: 0,
    profile_id: $profile_proveedor.id);

  $counter += 1;
  user_admin.save!
end

puts '2_User_seeds done at: ' + Time.new.to_s
