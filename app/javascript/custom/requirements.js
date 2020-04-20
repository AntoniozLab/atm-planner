// Call the dataTables jQuery plugin
$(document).ready(function () {
  $('#dataTable').DataTable({
    "language": {
      "lengthMenu": "Mostrar _MENU_ registros por página",
      "sSearch": "Buscar:",
      "zeroRecords": "No se encontraron resultados",
      "info": "Página _PAGE_ de _PAGES_",
      "infoEmpty": "No hay registros disponibles",
      "infoFiltered": "(filtered from _MAX_ total records)",
      "paginate": {
        "previous": "Anterior",
        "next": "Siguiente"
      }
    }
  });
});
