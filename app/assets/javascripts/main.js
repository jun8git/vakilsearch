var js = {
    cache_city: function(){
        $.cookie("city", $("#_cities option:selected").val(), {expires: 20, path: '/'});
        location.reload();
    },
    cache_service: function(){
        $.cookie("service", $("#_services option:selected").val(), {expires: 20, path: '/'});
    },
    initialize: function(){
        $("#_cities").change(js.cache_city);
        $("#_services").change(js.cache_service);
    }
}
$(document).ready(js.initialize);
