var Offers = function () {
    var offers_count = 0;
    var showMoreOffers = function () {
        jQuery(document).on("click", "#show_more_offers", function (e) {
            e.preventDefault();
            var current_length = jQuery(".offers-item").length;
            jQuery.ajax({
                url: config.site_url + "/special_offers",
                type: "get",
                data: {offset: current_length},
                beforeSend: function (jqXHR, settings) {
                    setTimeout(function () {
                        jQuery("#show_more_offers").text(lang.loading);
                    }, 300);
                },
                success: function (data) {
                    console.log(data);
                    setTimeout(function () {
                        jQuery(".offers-block").append(data);
                    }, 1500);
                },
                error: function (jqXHR, textStatus, errorThrown) {

                },
                complete: function (jqXHR, textStatus) {
                    setTimeout(function () {
                        jQuery("#show_more_offers").text(lang.load_more);
                        offers_count = jQuery("#offers_count").val();
                        current_length = jQuery(".offers-item").length;
                        if (offers_count <= current_length) {
                            jQuery("#show_more_offers").hide();
                        }
                    }, 1800);
                }
            });
        });
    };
    var loadShowMoreButton = function () {
        offers_count = jQuery("#offers_count").val();
        var current_length = jQuery(".offers-item").length;
        if (offers_count > current_length) {
            jQuery("#show_more_offers").show();
        }
    };

    var handleBook = function () {
        $("#special_offer_form").submit(function (e) {
            e.preventDefault();
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
                var url = config.base_url + "/special_offers/book";
                var formData = $("#special_offer_form").serialize();
                console.log(formData);
                $.ajax({
                    
                    url: url,
                    type: "post",
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    data: formData,
                    success: function (msg) {
                        console.log(msg);
//                        console.log(msg);
                        $("#submit_btnf").html(lang.complete_request);
                        $("#submit_btnf").attr("disabled", "disabled");
                    }
                });
                return false;
            }
            return false;
        });
    };


    var validateEmail = function (email) {
        var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(email);
    }

    return {
        //main function to initiate the module
        init: function () {
            showMoreOffers();
            loadShowMoreButton();
            handleBook();
        }

    };
}();
jQuery(document).ready(function () {
    Offers.init();
});