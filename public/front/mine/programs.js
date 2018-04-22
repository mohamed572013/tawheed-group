var Programs_filter = function () {
  $.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});


     var season = function () {
        jQuery(document).on("click", ".season_link", function (e) {
           // e.preventDefault();
           $( "#filter_form" ).submit();
        });
     };
     var date = function () {
        jQuery(document).on("change", ".date_link", function (e) {
           // e.preventDefault();
           $( "#filter_form" ).submit();
        });
     };
     var price = function () {
        jQuery(document).on("change", ".price_link", function (e) {
           // e.preventDefault();
           $( "#filter_form" ).submit();
        });
     };
    var flag = true;
    var sendRequest = function () {
       
        var form = $("#filter_form");
     
        form.on('submit' , function (e) {
            e.preventDefault();
            flag = true;
           // validateForm();
            if (flag) {
                var formData = form.serialize();
//               var season=$('.season_link').val();
                $.ajax({
                    
                    url: config.site_url+"/programs/handleFilter",
                    type: "post",
                    data: formData,
                   
                    success: function (data) {
                        console.log(formData);
                        console.log(data);
                         jQuery(".programs-block").html(data);
                    },
                     error: function (jqXHR, textStatus, errorThrown) {
                            console.log(errorThrown+" dd");
                            },
                          complete: function (jqXHR, textStatus) {
                            
                        }
                });
            }
        });
    };
    
    

  
    return {
        init: function () {
            sendRequest();
           season();
           date();
           price();
        }
    };
}();
jQuery(document).ready(function () {
    Programs_filter.init();
});