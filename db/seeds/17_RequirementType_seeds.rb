RequirementType.create([{ name: 'Nueva Instalación', description: 'Implementación en una nueva locación'}])
RequirementType.create([{ name: 'Retiro Definitivo', description: 'Desmontaje completo del punto'}])
RequirementType.create([{ name: 'Movimiento', description: 'Movimiento del ATM dentro de la misma locación'}])

puts "17_RequirementType_seeds done at: " + Time.new.to_s
