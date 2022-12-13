
$(document).on('click', '.check_district_li', function() {
    if ($('input', this).is(':checked')) {
        var old_text = $(".choose_city_text").text();
        var remove_text = $(".check_district_lable", this).text();
        var new_text = old_text.replace(", " + remove_text, "");
        $(".choose_city_text").text(new_text);
        var deselected = $('input', this).val();
        var selected_var = $("#division_id").val().toString();
        var new_string = selected_var.replace(deselected + ',', '');
        $('#division_id').val(new_string);
        $(".check_district_lable", this).css("color", "#9da9be");
        $(".customCheckbox", this).removeClass('customCheckboxChecked');
        $('input', this).prop('checked', false);
        $(".loaded_sectors").load("/ajax/load_sectors_bubble.php?district=" + new_string, function() {
            var selected_sectors = $("#sector_id").val();
            var result = selected_sectors.split(',');
            for (i=0; i < result.length; i++) {
                $(".loaded_sectors_span_" + result[i]).addClass('sector_checked');
                $('img', ".loaded_sectors_span_" + result[i].attr("src", "/images/sector_bubble_close.png"))
            }
            var sectors = [];
            $.each($(".sector_checked"), function() {
                sectors.push($(this).attr('id'));
            });
            console.log('sectors');
            var sectro_vars = $("#sector_id").val();
            var new_sectors = sectro_vars.replace(sectors + ',', '');
            $("#sector_id").val(sectors);
        });
    } else {
        var id = $('input', this).val();
        var old_text = $(".choose_city_text").text();
        var new_text = old_text + ", " + $(".check_district_lable", this).text();
        $(".choose_city_text").text(new_text);
        var selected_var = $("#division_id").val();
        var my_val = selected_var + id + ",";
        $("#division_id").val(my_val);
        $(".check_district_lable", this).css("color", "#363e4a");
        $(".customCheckbox", this).addClass('customCheckboxChecked');
        $('input', this).prop('checked', true);
        $(".loaded_sectors").load("/ajax/load_sectors_bubble.php?district=" + my_val, function() {
            var selected_sectors = $("#sector_id").val();
            var result = selected_sectors.split(',');
            for (i = 0; i < result.length; ++i) {
                $(".loaded_sectors_span_") + result[i]).addClass('sector_checked');
                $('img', ".loaded_sectors_span_" + result[i]).attr("src", "/images/sector_bubble_close.png");
            }
        });
    }
});
