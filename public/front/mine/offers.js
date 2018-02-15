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
        tjq("#special_offer_form").submit(function (e) {
            e.preventDefault();
            flag = true;
            tjq(".required_field").each(function () {
                var tjqthis = tjq(this);
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
            var email_value = tjq("input[name='email']").val();
            if (!validateEmail(email_value)) {
                flag = false;
                tjq("input[name='email']").css("border", "1px solid red");
                tjq("input[name='email']").closest(".form-group").find(".input-group-addon").css("color", "red").css("border", "1px solid red");
                setTimeout(function () {
                    tjq("input[name='email']").css("border", "");
                    tjq("input[name='email']").closest(".form-group").find(".input-group-addon").css("color", "").css("border", "");
                }, 1000);
            }

            if (flag) {
                var url = config.base_url + "/special_offers/book";
                var formData = tjq("#special_offer_form").serialize();
                tjq.ajax({
                    url: url,
                    type: "post",
                    headers: {
                        'X-CSRF-TOKEN': tjq('meta[name="csrf-token"]').attr('content')
                    },
                    data: formData,
                    success: function (msg) {
//                        console.log(msg);
                        tjq("#submit_btn").html(lang.complete_request);
                        tjq("#submit_btn").attr("disabled", "disabled");
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