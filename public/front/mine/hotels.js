var Hotels = function () {
    var hotels_count = 0;
    var filter = {};
    var showMoreHotels = function () {
        jQuery(document).on("click", "#show_more_hotels", function (e) {
            e.preventDefault();
            var current_length = jQuery(".hotel-item").length;
            filter['offset'] = current_length;
            var filter_encoded = JSON.stringify(filter);
            jQuery.ajax({
                url: config.base_url + "/hotels/filter",
                type: "post",
                data: {filter: filter_encoded},
                headers: {
                    'X-CSRF-TOKEN': tjq('meta[name="csrf-token"]').attr('content')
                },
                beforeSend: function (jqXHR, settings) {

                    setTimeout(function () {
                        jQuery("#show_more_hotels").text(lang.loading);
                    }, 300);
                },
                success: function (data) {
                    console.log(data);
                    setTimeout(function () {
                        jQuery(".hotels-block").append(data);
                    }, 1500);
                },
                error: function (jqXHR, textStatus, errorThrown) {

                },
                complete: function (jqXHR, textStatus) {
                    setTimeout(function () {
                        jQuery("#show_more_hotels").text(lang.load_more);
                        hotels_count = jQuery("#hotels_count").val();
                        current_length = jQuery(".hotel-item").length;
                        if (hotels_count <= current_length) {
                            jQuery("#show_more_hotels").hide();
                        }
                    }, 1800);
                    filter['offset'] = 0;
                }
            });
        });
    };
    var loadShowMoreButton = function () {
        hotels_count = jQuery("#hotels_count").val();
        var current_length = jQuery(".hotel-item").length;
        if (hotels_count > current_length) {
            jQuery("#show_more_hotels").show();
        }
    };
    var getMoreRooms = function () {
        jQuery("#more_rooms_btn").click(function (e) {
            e.preventDefault();
            jQuery.ajax({
                url: config.base_url + "/home/get_more_make",
                type: "get",
                data: {lang: config.current_lang},
                success: function (msg) {
                    var html = "";
                    var data = JSON.parse(msg);
                    html += '<div class="row remove_this" ><div class="col-md-6 col-sm-6 col-xs-12"><div class="form-group">';
                    html += '<label>' + lang.rooms + '</label><div class="input-group"><div class="input-group-addon">';
                    html += '<i class="fa fa-check-square" aria-hidden="true"></i></div>';
                    html += '<select class="form-control rooms required_field">';
                    html += '<option selected="selected" value="">' + lang.select_room + '</option>';
                    for (var i in data.rooms) {
                        html += '<option value="' + i + '">' + data.rooms[i] + '</option>';
                    }
                    html += '</select> </div></div></div>';
                    html += '<div class="col-md-6 col-sm-6 col-xs-12">';
                    html += '<div class="form-group">';
                    html += '<a type="submit"  class="button full-width uppercase btn-small btnmore btn-error ">' + lang.remove + '</a>';
                    html += '</div></div></div>';
                    jQuery("#rooms_area").append(html);
                }
            });
        });
    };
    var removeRow = function () {
        jQuery(document).on("click", ".btnmore", function (e) {
            e.preventDefault();
            jQuery(this).closest(".remove_this").remove();
        });
    };
    var activateFieldsSelected = function () {
        jQuery(".required_field").change(function () {
            var $this = jQuery(this);
            if ($this.val() != "") {
                $this.closest(".form-group").find("i").css("color", "#4caf50");
                $this.closest(".form-group").find(".input-group-addon").css("border-left", "1px solid #4caf50").css("border-top", "1px solid #4caf50").css("border-bottom", "1px solid #4caf50");
                $this.css("border", "1px solid #4caf50");
            } else {
                $this.closest(".form-group").find("i").css("color", "#ff1717");
                $this.closest(".form-group").find(".input-group-addon").css("border-left", "1px solid #ff1717").css("border-top", "1px solid #ff1717").css("border-bottom", "1px solid #ff1717");
                $this.css("border", "1px solid #ff1717");
            }
        });
    };
    var validateLeaveData = function () {
//        jQuery(document).on("change", "#check_out_month", function () {
//            var data = new Array();
//            data['arrive_day'] = jQuery("check_in_day").val();
//            data['arrive_month'] = jQuery("check_in_month").val();
//            data['leave_day'] = jQuery("check_out_day").val();
//            data['leave_month'] = jQuery(this).val();
//
//        });
    };

    var saveDataInStorage = function (data) {
        localStorage.setItem("destination", data.destination);
        localStorage.setItem("check_in_day", data.check_in_day);
        localStorage.setItem("check_in_month", data.check_in_month);
        localStorage.setItem("check_out_day", data.check_out_day);
        localStorage.setItem("check_out_month", data.check_out_month);
//        localStorage.setItem("current_id", data.current_id);
    };

    var handleDataToBeFiltered = function () {
        jQuery("#submit_btn").click(function (e) {
            e.preventDefault();
            flag = true;
            jQuery(".required_field").each(function () {
                var $this = jQuery(this);
                if ($this.val() == "") {
                    flag = false;
                    $this.closest(".form-group").find("i").css("color", "#ff1717");
                    $this.closest(".form-group").find(".input-group-addon").css("border-left", "1px solid #ff1717").css("border-top", "1px solid #ff1717").css("border-bottom", "1px solid #ff1717");
                    $this.css("border", "1px solid #ff1717");
                }
            });
            if (flag) {
                var data = {};
                var destination = data['destination'] = jQuery("#city_selected").val();
//                var current_id = data['current_id'] = jQuery("#current_id").val();
                var check_in_day = data['check_in_day'] = jQuery("#check_in_day").val();
                var check_in_month = data['check_in_month'] = jQuery("#check_in_month").val();
                var check_out_day = data['check_out_day'] = jQuery("#check_out_day").val();
                var check_out_month = data['check_out_month'] = jQuery("#check_out_month").val();
                saveDataInStorage(data);
                var rooms_array = new Array();
                jQuery(".rooms").each(function () {
                    rooms_array.push(jQuery(this).val());
                });
                filter['destination'] = destination;
                filter['check_in_day'] = check_in_day;
                filter['check_in_month'] = check_in_month;
                filter['check_out_day'] = check_out_day;
                filter['check_out_month'] = check_out_month;
                filter['rooms'] = rooms_array;
                var filter_encoded = JSON.stringify(filter);
                jQuery.ajax({
                    url: config.base_url + "/hotels/filter",
                    type: "post",
                    data: {filter: filter_encoded, lang: config.current_lang},
                    headers: {
                        'X-CSRF-TOKEN': tjq('meta[name="csrf-token"]').attr('content')
                    },
                    success: function (msg) {
                        jQuery(".hotels-block").html(msg);
                    }
                });
            }
        });
    };
    return {
        //main function to initiate the module
        init: function () {
            showMoreHotels();
            loadShowMoreButton();
            getMoreRooms();
            removeRow();
            handleDataToBeFiltered();
            activateFieldsSelected();
            validateLeaveData();
        }

    };
}();
jQuery(document).ready(function () {
    Hotels.init();
});