var Make_your_umrah = function () {

    var flag = true;

    var sendRequestHome = function () {
        var form = $("#DesignIslamicForm");
        form.submit(function (e) {
            e.preventDefault();
            flag = true;
           // validateForm();
            if (flag) {
                var formData = form.serialize();
                //alert(formData);
                $.ajax({
                    url: config.base_url + "/home/send_make_your_umrah",
                    type: "post",
                    data: formData,
                    success: function (msg) {console.log(msg);
                        if (msg == 1) {
                            $("#submit-make").html(lang.complete_request);
                            $("#submit-make").attr("disabled", "disabled");
                        }
                    }
                });
            }
        });
    };
  
  
    var validateForm = function () {
        $(".required_field").each(function () {
            var $this = $(this);
            if ($this.val() == "") {
                flag = false;
                $this.css("border", "1px solid #ff1717");
                $this.closest(".form-group").find("label").css("color", "#ff1717");
                $this.closest('.form-group').find(".input-group-addon").css("color", "#ff1717");
                setTimeout(function () {
                    $this.css("border", "");
                    $this.closest(".form-group").find("label").css("color", "");
                    $this.closest('.form-group').find(".input-group-addon").css("color", "");
                }, 2000);
            }
        });
    };

   
   
    var loadMoreRooms = function () {
        $(document).on("click", "#add_more", function (e) {
            e.preventDefault();
            $.ajax({
                url: config.site_url + "/home/get_more_make",
                type: "get",
                data: {lang: config.current_lang},
                success: function (data) {
                     console.log(data);
                    $(".rooms_block").append(data);
                     var current_length = jQuery(".new_item").length;
                                if(current_length>1){
                                     jQuery("#rem").show();
                                     jQuery("#rem").addClass('remove');
                                     jQuery(".new_item").addClass('remove_row');
                                     
                                }
                } ,error: function (jqXHR, textStatus, errorThrown) {
                            console.log(errorThrown+" dd");
                            },
                          complete: function (jqXHR, textStatus) {
                            
                        }
            });
        });
    };

//     var num = function () {
//          $(document).on("click", "#add_more", function (e) {
//          
//         var current_length = jQuery(".new_item").length;
//         if(current_length>1){
//             
//         }
//          });
//    };
    var removeRow = function () {
        $(document).on("click", ".remove", function (e) {
            e.preventDefault();
            $(this).closest('.remove_row').remove();
             var current_length = jQuery(".new_item").length;
                                if(current_length==1){
                                     jQuery("#rem").hide();
                                       jQuery(".add").show();
                                       jQuery(".new_item").removeClass('remove_row');
                                }
            
            flag = true;
        });
    };

   
   
    return {
        init: function () {
          jQuery("#rem").hide();
          jQuery(".add").hide();
            sendRequestHome();
            loadMoreRooms();
            removeRow();
           // num();
        }
    };

}();

jQuery(document).ready(function () {
    Make_your_umrah.init();
});