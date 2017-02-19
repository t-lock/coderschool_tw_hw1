//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require tether
//= require bootstrap-sprockets

$('#myModal').on('shown.bs.modal', function() {
  $('#myInput').focus();
});

$('.modal-launch').on('click', function(e) {
  $('#myModal').modal('show');
});
