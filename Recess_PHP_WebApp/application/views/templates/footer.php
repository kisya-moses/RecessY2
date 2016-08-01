<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!-- Footer -->
<hr/>
<div class="footer text-center">
    <div class="fa fa-copyright"> Copyright 2016</div><br>            
    <span class="h4">Members Involved</span>
    <ul class="list-inline text-capitalize">
        <li><a class="fa fa-user" href="#"> Lyada Felix </a></li>
        <li><a class="fa fa-user" href="#"> Ssenyonjo Edrine </a></li>
        <li><a class="fa fa-user" href=""> Muwesi Patrick Daniel </a></li>
        <li><a class="fa fa-user" href="mailto:kisyamoses12@outlook.com" > Kisya Moses </a></li>
    </ul>
</div>
<!-- jQuery -->
<script src="<?php echo site_url(); ?>js/jQuery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<?php echo site_url(); ?>bootstrap/js/bootstrap.js"></script>
<script src="<?php echo site_url(); ?>js/jquery.flexslider.js"></script>
<script src="<?php echo site_url(); ?>js/opencpu-0.4.js"></script>
<script src="<?php echo site_url(); ?>js/metisMenu.js"></script>
<script src="<?php echo site_url(); ?>js/sb-admin-2.js"></script>        
<script>
// THIS HANDLES SEARCH
    function Q() {
        var q = $("#search").val();
        var uri = " https://www.googleapis.com/customsearch/v1?key=AIzaSyAzX4PQ7HUcyioOlgIYSoVZUzT-9JRcfkk&cx=017576662512468239146:omuauf_lfve&q=" + q;
        var res = $.get(uri, function (data) {
            $(".content").removeClass().addClass("searchResult").html(data);
        });
        return res;
    }
    ;
    $("#search").change(function (event) {
        event.preventDefault();
        Q();
    });
    $("#Sbtn").click(function (event) {
        event.preventDefault();
        console.log("SEARCHING....");
        Q();
    });
</script>
</body>
</html>