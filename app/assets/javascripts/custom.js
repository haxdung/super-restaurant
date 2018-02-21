$(document).ready(function(){
  $('.alert').delay(3000).fadeToggle(500, function(){
    $(this).remove();
  });

  $('.chosen-select').chosen({
    allow_single_deselect: true,
    width: '100%'
  });

  $(document).on('.form-cru','click',function(){
    $(".fa-spinner").show();
  });
});
