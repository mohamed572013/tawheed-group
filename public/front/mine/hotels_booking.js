var Hotels_booking = function () {
    var flag = true;
    var sendRequest = function () {
        var form = $("#book_hotel_form");
        form.submit(function (e) {
            e.preventDefault();
            flag = true;
            validateForm();
            if (flag) {
                var $form = form.serialize();
                $.ajax({
                    url: config.base_url + "/hotels/book_now",
                    type: "post",
                    data: $form,
                    success: function (msg) {
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
    var loadMoreRooms = function () {
        $(document).on("click", "#add_more", function (e) {
            e.preventDefault();
            $.ajax({
                url: config.base_url + "/home/get_more_make",
                type: "get",
                data: {lang: config.current_lang},
                success: function (msg) {
                    var html = "";
                    var result = JSON.parse(msg);
                    console.log(result.rooms);
                    html += '<div class="remove_row"><div class="col-sm-12 col-md-2 col-lg-2 col-xs-12  form-group pull-left">'
                    html += '<label class="control-label">' + lang.room_type + '</label>';
                    html += '<div class="selector"><select name="room_type[]" class="full-width required_field room_type">';
                    for (var i in result.rooms) {
                        html += '<option value="' + i + '">' + result.rooms[i] + '</option>';
                    }
                    var first_element = result.rooms[Object.keys(result.rooms)[0]]; //returns first element in array
                    html += '</select><span class="custom-select full-width">' + first_element + '</span></div></div>';
                    html += '<div class="col-sm-2 form-group pull-left">';
                    html += '<label class="control-label">' + lang.number_of_rooms + '</label>';
                    html += '<input type="number" name="number_of_rooms[]" value="1" min="1"  class="input-text full-width number_of_rooms"></div>';
                    html += '<div class="col-sm-2 form-group pull-left">';
                    html += '<label class="control-label">' + lang.number_of_adults + '</label>';
                    html += '<input type="number" name="adults[]" value="1" min="1"  class="input-text full-width"></div>';
                    html += '<div class="col-sm-2 form-group pull-left">';
                    html += '<label class="control-label">' + lang.number_of_children + '</label>';
                    html += '<input type="number" value="0"  name="children[]" class="input-text full-width">';
                    html += '</div><div class="col-sm-2 form-group pull-left">';
                    html += '<label class="control-label">' + lang.number_of_infants + '</label>';
                    html += '<input type="number" value="0" name="infants[]" class="input-text full-width">';
                    html += '</div><div class="col-sm-1 form-group pull-left">';
                    html += '<label class="control-label"></label>';
                    html += '<a href="" class="btn btn-danger remove"  >' + lang.remove + '</a>';
                    html += '</div></div>';
                    $(".rooms_block").append(html);
                }
            });
        });
    };
    var removeRow = function () {
        $(document).on("click", ".remove", function (e) {
            e.preventDefault();
            $(this).closest('.remove_row').remove();
            flag = true;
        });
    };

    var setDataBySearch = function () {
        var now = new Date();
        var destination = localStorage.getItem("destination");
        var check_in_day = localStorage.getItem("check_in_day");
        var check_in_month = localStorage.getItem("check_in_month");
        var check_out_day = localStorage.getItem("check_out_day");
        var check_out_month = localStorage.getItem("check_out_month");
        $("input[name='start_date']").val(check_in_day + "/" + check_in_month + "/" + now.getFullYear());
        $("input[name='end_date']").val(check_out_day + "/" + check_out_month + "/" + now.getFullYear());
    };

    var calculatePrice = function () {
        $(document).on("blur keyup", ".number_of_rooms", function () {
            performPrice();
        });
        $(document).on("blur change", "input[name='end_date']", function () {
            performPrice();
        });
        $(document).on("blur change", "input[name='start_date']", function () {
            performPrice();
        });
        $(document).on("change", ".room_type", function () {
            performPrice();
        });
    };

    var performPrice = function () {
        var rooms = new Array();
        var rooms_count = new Array();
        $(".room_type").each(function () {
            var $this = $(this).val();
            rooms.push($this);
        });
        $(".number_of_rooms").each(function () {
            var $this = $(this).val();
            rooms_count.push($this);
        });
        var start_date = $("input[name='start_date']").val();
        var end_date = $("input[name='end_date']").val();
        var data = {};
        data['room_type'] = rooms;
        data['rooms_count'] = rooms_count;
        data['start_date'] = start_date;
        data['end_date'] = end_date;
        var data_encoded = JSON.stringify(data);
        $.ajax({
            url: config.base_url + "/hotels/calculatePrice",
            type: "post",
            data: {data: data_encoded},
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (msg) {
                $("#currenct_price").html(msg);
            }
        });
    };

    return {
        init: function () {
            sendRequest();
            loadMoreRooms();
            removeRow();
            setDataBySearch();
            calculatePrice();
        }
    };
}();
jQuery(document).ready(function () {
    Hotels_booking.init();
});