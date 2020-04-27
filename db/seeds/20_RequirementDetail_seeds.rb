RequirementDetail.create([
  {
    description: 'Instalación de cajero reparado',
    start_date: '2020-04-02',
    end_date: '2020-04-03',
    # cancel_observation: ,
    # id:1 => es un atm en producción
    atm_new: 1,
    # atm_old: ,
    requirement_id: 1,
    # id:1 => nueva instalación
    requirement_type_id: 1,
    # id:3 => completado
    requirement_detail_state_id: 3,
    # id:1 => genérico
    requirement_detail_reason_id: 1
  },
  {
    description: 'Instalación de cajero nuevo',
    start_date: '2020-04-02',
    end_date: '2020-04-03',
    # cancel_observation: ,
    # id:2 => es un atm en producción
    atm_new: 2,
    # atm_old: ,
    requirement_id: 1,
    # id:1 => nueva instalación
    requirement_type_id: 1,
    # id:3 => completado
    requirement_detail_state_id: 3,
    # id:1 => genérico
    requirement_detail_reason_id: 1
  }
])

puts "20_RequirementDetail_seeds done at: " + Time.new.to_s
