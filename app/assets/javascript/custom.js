$(document).on('click', '.btn-danger', function(e) {
    e.preventDefault(); // Evita el comportamiento predeterminado del botón
    
    var confirmMessage = $(this).data('confirm');
    
    if (confirm(confirmMessage)) {
      window.location.href = $(this).attr('href');
    }
  });
  