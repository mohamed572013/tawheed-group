$(document).ready(function () {
    alert("jdf");
    $("#contact_form").submit(function () {
        flag = true;
        $(".required_field").each(function () {
            var tjqthis = $(this);
            if (tjqthis.val() == "") {
                flag = false;
                tjqthis.css("border", "1px solid red");
                tjqthis.closest(".form-group").find(".input-group-addon").css("color", "red").css("border", "1px solid red");
                setTimeout(function () {
                    tjqthis.css("border", "");
                    tjqthis.closest(".form-group").find(".input-group-addon").css("color", "").css("border", "");
                }, 1000);
            }
        });
        var email_value = $("input[name='email']").val();
        if (!validateEmail(email_value)) {
            flag = false;
            $("input[name='email']").css("border", "1px solid red");
            $("input[name='email']").closest(".form-group").find(".input-group-addon").css("color", "red").css("border", "1px solid red");
            setTimeout(function () {
                $("input[name='email']").css("border", "");
                $("input[name='email']").closest(".form-group").find(".input-group-addon").css("color", "").css("border", "");
            }, 1000);
        }

        if (flag) {
            var url = config.base_url + "/contact/send";
            var formData = $("#contact_form").serialize();
            $.ajax({
                url: url,
                type: "post",
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                data: formData,
                success: function (msg) {
                    $("#submit_btn").html(lang.complete_request);
                    $("#submit_btn").attr("disabled", "disabled");
                }
            });
            return false;
        }
        return false;
    });
});
function validateEmail(email) {
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}
