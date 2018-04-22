var Programs_booking = function () {
  $.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
    var flag = true;
    var sendRequest = function () {
       
        var form = $("#book_program_form");
     
        form.on('submit' , function (e) {
            e.preventDefault();
            flag = true;
            validateForm();
            if (flag) {
                var formData = form.serialize();
               
                $.ajax({
                    
                    url: config.base_url+"/programs/book_now",
                    type: "post",
                    data: formData,
                   
                    success: function (msg) {
                        console.log(formData);
                        console.log(msg);
                        if (msg == 1) {
                            $("#submit_btn").html(lang.complete_request);
                            $("#submit_btn").attr("disabled", "disabled");
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
    
    return {
        init: function () {
            sendRequest();
           
        }
    };
}();
jQuery(document).ready(function () {
    Programs_booking.init();
});