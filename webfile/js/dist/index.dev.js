"use strict";

$(document).on('click', '#calculate', function (e) {
  // e.preventDefault();
  var kfc = $('#KFC').val();
  var mcdonald = $('#MCDONALD').val();
  var bonchon = $('#BONCHON').val();
  var burgerking = $('#BURGERKING').val();
  var domino = $('#DOMINO').val();
  var subway = $('#SUBWAY').val();
  var dairyqueen = $('#DAIRYQUEEN').val();
  var misterdonut = $('#MISTERDONUT').val();
  var krispykreme = $('#KRISPYKREME').val();
  var dunkindonut = $('#DUNKINDONUT').val();
  var haagendazs = $('#HAAGENDAZS').val();
  var baskinrobbins = $('#BASKINROBBINS').val();
  var pizzahut = $('#PIZZAHUT').val();

  if (kfc == "" && mcdonald == "" && bonchon == "" && burgerking == "" && domino == "" && subway == "" && dairyqueen == "" && misterdonut == "" && krispykreme == "" && dunkindonut == "" && haagendazs == "" && baskinrobbins == "" && pizzahut == "") {
    swal({
      icon: "error",
      text: "Please select your food !"
    });
  } else {
    $.ajax({
      type: "POST",
      url: '/api/calculate.php',
      data: {
        kfc: $('#KFC').val(),
        mcdonald: $('#MCDONALD').val(),
        bonchon: $('#BONCHON').val(),
        burgerking: $('#BURGERKING').val(),
        domino: $('#DOMINO').val(),
        subway: $('#SUBWAY').val(),
        dairyqueen: $('#DAIRYQUEEN').val(),
        misterdonut: $('#MISTERDONUT').val(),
        krispykreme: $('#KRISPYKREME').val(),
        dunkindonut: $('#DUNKINDONUT').val(),
        haagendazs: $('#HAAGENDAZS').val(),
        baskinrobbins: $('#BASKINROBBINS').val(),
        pizzahut: $('#PIZZAHUT').val()
      },
      datatype: 'json',
      success: function success(data) {
        if (data.status == "200") {
          //alert(data.data);
          swal({
            icon: "success",
            text: "Your calories is " + data.data + " kcal !"
          });
        }
      },
      error: function error() {}
    });
  }
});
$(document).on('click', '#reset', function (e) {
  $('#KFC').selectpicker('deselectAll');
  $('#MCDONALD').selectpicker('deselectAll');
  $('#BONCHON').selectpicker('deselectAll');
  $('#BURGERKING').selectpicker('deselectAll');
  $('#DOMINO').selectpicker('deselectAll');
  $('#SUBWAY').selectpicker('deselectAll');
  $('#DAIRYQUEEN').selectpicker('deselectAll');
  $('#MISTERDONUT').selectpicker('deselectAll');
  $('#KRISPYKREME').selectpicker('deselectAll');
  $('#DUNKINDONUT').selectpicker('deselectAll');
  $('#HAAGENDAZS').selectpicker('deselectAll');
  $('#BASKINROBBINS').selectpicker('deselectAll');
  $('#PIZZAHUT').selectpicker('deselectAll');
});