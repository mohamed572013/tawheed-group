var Index = function () {

    flag = true;
    var subscribeEmail = function () {
        jQuery(".newletter-link").on("click", function (e) {
            e.preventDefault();
            flag = true;
            var email = jQuery("#newsletter-email").val();
            if (email == "") {
                jQuery("#subscribe-result").html(lang.email_field_is_empty);
                setTimeout(function () {
                    jQuery("#subscribe-result").html("");
                }, 2500);
                flag = false;
            } else {
                if (!validateEmail(email)) {
                    jQuery("#subscribe-result").html(lang.not_valid_email_address);
                    setTimeout(function () {
                        jQuery("#subscribe-result").html("");
                    }, 2500);
                    flag = false;
                } else {
                    var url = config.base_url + "/home/subscribe/" + email;
                    jQuery.ajax({
                        url: url,
                        type: "get",
                        success: function (msg) {
                            if (msg == 0) {
                                jQuery("#subscribe-result").html(lang.redundant_email_address);
                                setTimeout(function () {
                                    jQuery("#subscribe-result").html("");
                                }, 2500);
                            } else {
                                jQuery("#subscribe-result").html(lang.successfully_subscribed);
                                setTimeout(function () {
                                    jQuery("#subscribe-result").html("");
                                }, 2500);
                            }
                        }
                    });
                }
            }
        });
    };

    var validateEmail = function (email) {
        var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(email);
    };

    return {
        init: function () {
            subscribeEmail();
        }
    };

}();

jQuery(document).ready(function () {
    Index.init();
});