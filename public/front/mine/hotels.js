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
                    var rooms = JSON.parse(msg);
                    html += '<div class="row remove_this" ><div class="col-md-6 col-sm-6 col-xs-12"><div class="form-group">';
                    html += '<label>' + lang.rooms + '</label><div class="input-group"><div class="input-group-addon">';
                    html += '<i class="fa fa-check-square" aria-hidden="true"></i></div>';
                    html += '<select class="form-control rooms">';
                    html += '<option selected="selected" value="">' + lang.select_room + '</option>';
                    for (var i in rooms) {
                        html += '<option value="' + i + '">' + rooms[i] + '</option>';
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

    var handleDataToBeFiltered = function () {
        jQuery("#submit_btn").click(function (e) {
            e.preventDefault();
            var destination = jQuery("#city_selected").val();
            var check_in_day = jQuery("#check_in_day").val();
            var check_in_month = jQuery("#check_in_month").val();
            var check_out_day = jQuery("#check_out_day").val();
            var check_out_month = jQuery("#check_out_month").val();
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
                data: {filter: filter_encoded},
                headers: {
                    'X-CSRF-TOKEN': tjq('meta[name="csrf-token"]').attr('content')
                },
                success: function (msg) {
                    jQuery(".hotels-block").html(msg);
                }
            });
            console.log(filter);
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
        }

    };
}();
jQuery(document).ready(function () {
    Hotels.init();
});