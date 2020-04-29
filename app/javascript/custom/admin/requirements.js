$(function () {
  $(".selectize").select2({
    placeholder: "Seleccionar",
  });

  // Selectize genérico
  $(".requirement_detail .selectize").select2({
    placeholder: "Seleccionar",
  });

  $(".requirement_detail .atm-selectize").select2({
    placeholder: "Número de serie",
  });
  $(".requirement_detail .type-selectize").select2({
    placeholder: "Seleccionar",
  });
  $(".requirement_detail .reason-selectize").select2({
    placeholder: "Elige un motivo",
  });
  $(".requirement_detail .state-selectize").select2({
    placeholder: "Estado del requerimiento",
  });
});
