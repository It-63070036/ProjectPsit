$("form#food").submit(function (e) {
    e.preventDefault();
    var formData = new FormData(this);
    $.ajax({
        url: 'api/calculate.php',
        type: 'POST',
        data: formData,
        dataType: "json",
        success: function (data) {
            if (data.status == "200") {
                //alert(data.cal);
                swal({
                    icon: "success",
                    text: "Your calories is " + data.cal + " kcal !"
                });
            }
        },
        error: function () {
            swal({
                icon: "error",
                text: "Please select your food !"
            });
        },
        cache: false,
        contentType: false,
        processData: false
    });
});

$(document).on('click', '#reset', function (e) {
    $('.selectpicker').selectpicker('deselectAll');
});