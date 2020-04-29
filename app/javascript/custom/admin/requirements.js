$(document).on("ready turbolinks:load", function () {
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

  // Eventos en los formularios de requerimientos
  $(".js_rq-type").on("change", function (event) {
    // Nueva instalación
    if (this.value === "1") {
      $(".js_box-atm-old").addClass("d-none");
      $(".js_box-atm-new").removeClass("d-none");
    }
    // Retiro definitivo
    else if (this.value === "2") {
      $(".js_box-atm-old").removeClass("d-none");
      $(".js_box-atm-new").addClass("d-none");
    }
    // Movimiento
    else if (this.value === "3") {
      $(".js_box-atm-old").removeClass("d-none");
      $(".js_box-atm-new").removeClass("d-none");
    }
    console.log(this.value, typeof this.value);

    // Reset values
    $(".js_box-atm-old select").val("");
    $(".js_box-atm-old select").trigger("change");
    $(".js_box-atm-new select").val("");
    $(".js_box-atm-new select").trigger("change");
  });
});
