# Perfiles
$profile_comercial = Profile.create(name: 'Comercial', description: 'Usuario del departamento de Marketing')
$profile_gestor = Profile.create(name: 'Gestor', description: 'Usuario del departamento de TI y Transformación Agile')
$profile_proveedor = Profile.create(name: 'Proveedor', description: 'Usuario que brinda servicios externos')

puts '1_Profile_seeds done at: ' + Time.new.to_s
