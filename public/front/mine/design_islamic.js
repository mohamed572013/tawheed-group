var rules_ok = false;
var is_logged = false;
var design_islamic = function () {

    var init = function () {
                // $.extend(lang, new_lang);
        handleSubmit();
    }

    var handleSubmit = function () {

//        $('#DesignIslamicForm').validate({
//            rules: {
//                trip_season: {
//                    required: true,
//                },
//                email_trip: {
//                    required: true,
//                    email: true,
//                },
//                trip_date: {
//                    required: true,
//                },
//
//                makka_number_of_nights: {
//                    required: true,
//                    number: true,
//                },
//
//                madina_number_of_nights: {
//                    required: true,
//                    number: true,
//                },
//                flight_direction_from: {
//                    required: true,
//                },
//                flight_direction_to: {
//                    required: true,
//                },
//                direction_of_return_from: {
//                    required: true,
//                },
//                direction_of_return_to: {
//                    required: true,
//                },
//                name: {
//                    required: true,
//                },
//                phone: {
//                    required: true,
//                },
//                message: {
//                    required: true,
//                },
//            },
//            messages: lang.messages,
//            highlight: function (element) { // hightlight error inputs
//                $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
//            },
//            unhighlight: function (element) {
//                $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
//                $(element).closest('.form-group').find('.help-block').html('');
//            },
//            errorPlacement: function (error, element) {
//                $(element).closest('.form-group').find('.help-block').html($(error).html());
//            }
//        });
        $('#DesignIslamicForm .submit-form').click(function () {

            if ($('#DesignIslamicForm').validate().form()) {
                $('#DesignIslamicForm .submit-form').attr('disabled', 'disabled');
                $('#DesignIslamicForm .submit-form').html('<i class="fa fa-spinner fa-spin fa-3x fa-fw"></i><span class="sr-only">Loading...</span>');
                setTimeout(function () {
                    $('#DesignIslamicForm').submit();
                }, 400);
            }

            return false;
        });
       
    }

    return {
        init: function () {
            init();
        },
        empty: function () {
            $('.has-error').removeClass('has-error');
            $('.has-success').removeClass('has-success');
            $('.help-block').html('');
            App.emptyForm();
        },
    }

}();
jQuery(document).ready(function () {
    design_islamic.init();
});



/////////////////////////////////test
"use strict";
(function ($) {
    function scroll_to_class(element_class, removed_height) {
        var scroll_to = $(element_class).offset().top - removed_height;
        if ($(window).scrollTop() != scroll_to) {
            $('.form-wizard').stop().animate({scrollTop: scroll_to}, 0);
        }
    }
    function bar_progress(progress_line_object, direction) {
        var number_of_steps = progress_line_object.data('number-of-steps');
        var now_value = progress_line_object.data('now-value');
        var new_value = 0;
        if (direction == 'right') {
            new_value = now_value + (100 / number_of_steps);
        } else if (direction == 'left') {
            new_value = now_value - (100 / number_of_steps);
        }
        progress_line_object.attr('style', 'width: ' + new_value + '%;').data('now-value', new_value);
    }
    jQuery(document).ready(function () {

        /*
         Form
         */
        $('.form-wizard fieldset:first').fadeIn('slow');

        $('.form-wizard .required').on('focus', function () {
            $(this).removeClass('input-error');
        });

        // next step
        $('.form-wizard .btn-next').on('click', function () {
            var parent_fieldset = $(this).parents('fieldset');
            var next_step = true;
            // navigation steps / progress steps
            var current_active_step = $(this).parents('.form-wizard').find('.form-wizard-step .active');
            var progress_line = $(this).parents('.form-wizard').find('.form-wizard-progress-line');

            // fields validation
            parent_fieldset.find('.required').each(function () {
                if ($(this).val() == "") {
                    $(this).closest('.form-group').removeClass('has-success').addClass('has-error');
//                    $(this).addClass('has-error');
                    next_step = false;
                } else {
                    $(this).closest('.form-group').removeClass('has-error').addClass('has-success');
//                    $(this).removeClass('input-error');
                }
            });
            // fields validation

            if (next_step) {
                parent_fieldset.fadeOut(400, function () {
                    // change icons
                    current_active_step.removeClass('active').addClass('activated').next().addClass('active');
                    // progress bar
                    bar_progress(progress_line, 'right');
                    // show next step
                    $(this).next().fadeIn();
                    // scroll window to beginning of the form
                    scroll_to_class($('.form-wizard'), 20);
                });
            }

        });

        // previous step
        $('.form-wizard .btn-previous').on('click', function () {
            // navigation steps / progress steps
            var current_active_step = $(this).parents('.form-wizard').find('.form-wizard-step.active');
            var progress_line = $(this).parents('.form-wizard').find('.form-wizard-progress-line');

            $(this).parents('fieldset').fadeOut(400, function () {
                // change icons
                current_active_step.removeClass('active').prev().removeClass('activated').addClass('active');
                // progress bar
                bar_progress(progress_line, 'left');
                // show previous step
                $(this).prev().fadeIn();
                // scroll window to beginning of the form
                scroll_to_class($('.form-wizard'), 20);
            });
        });

        // submit
        $('.form-wizard').on('submit', function (e) {

            // fields validation
            $(this).find('.required').each(function () {
                if ($(this).val() == "") {
                    e.preventDefault();
                    $(this).addClass('input-error');
                } else {
                    $(this).removeClass('input-error');
                }
            });
            // fields validation

        });


    });


}(jQuery));
