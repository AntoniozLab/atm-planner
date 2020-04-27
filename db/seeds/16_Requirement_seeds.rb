Requirement.create([
  {
    description: 'Instalación en Real Plaza Centro Cívico',
    request_date: '2020-04-01',
    completion_date: '2020-04-03',
    percentage_success: '2/2',
    # usuario que atenderá el requerimiento: ID:5 (proveedor)
    user_assigned: 5,
    # campo opcional
    # attachment_url: '',
    # usuario que solicitó el requerimiento: ID:2 (comercial)
    user_id: 2,
    # estado del requerimiento: ID:2 (completado)
    requirement_state_id: 2,
    # locación del cliente: ID:1 (cliente: Banco Internacional del Perú SAA - INTERBANK)
    location_id: 1
  }
])

puts "16_Requirement_seeds done at: " + Time.new.to_s

# Requirement.create([{ description: 'Retiro de cajeros en San Miguel'}])
# Requirement.create([{ description: 'Movimiento de cajeros por actualización'}])
# Requirement.create([{ description: 'Instalación en nuevo Real Plaza Puruchuco'}])
