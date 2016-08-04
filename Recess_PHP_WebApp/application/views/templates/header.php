<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$str = "ACLED data analysis system | " . $title;
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>  
        <meta name="viewport" content="width=device-width, initial-scale=1" />        
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="<?php echo site_url(); ?>images/favicon.ico" rel="shortcut icon" type="image/vnd.microsoft.icon" />
        <title><?php echo ucwords($str); ?></title>
        <!-- Bootstrap Core CSS -->        
        <link href="<?php echo site_url(); ?>bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="<?php echo site_url(); ?>css/font-awesome.css" rel="stylesheet" type="text/css" />
        <!-- jQuery -->
        <script src="<?php echo site_url(); ?>js/jQuery.js"></script>
        <script src="<?php echo site_url(); ?>bootstrap/js/bootstrap.min.js"></script>
        <script src="<?php echo site_url(); ?>js/json2-min.js"></script>
        <!-- html5shiv.min.js -->
        <script src="<?php echo site_url(); ?>bootstrap/shim/html5shiv.min.js"></script>
        <script src="<?php echo site_url(); ?>bootstrap/shim/respond.min.js"></script>
        <!-- include D3.js for visualization of data-->
        <script src="<?php echo site_url(); ?>js/opencpu-0.4.js"></script>
        <script src="<?php echo site_url(); ?>js/metisMenu.js"></script>
        <script src="<?php echo site_url(); ?>js/sb-admin-2.js"></script>        
        <link href="<?php echo site_url(); ?>css/sb-admin-2.css" rel="stylesheet" type="text/css" />
        <!-- flexslider.js for slideshow on home page-->
        <script src="<?php echo site_url(); ?>js/jquery.flexslider.js"></script>
        <!-- flexislider.css -->
        <link href="<?php echo site_url(); ?>css/flexslider.css" rel="stylesheet" type="text/css" />
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <!-- Pace.js -->
        <script>
            window.paceOptions = {
                initialRate: 0.2,
                minTime: 2500,
                document: true,
                ajax: true,
                eventLag: true,
                maxProgressPerframe: 4,
                ghostTime: 100,
                restartOnRequestAfter: false,
                elements: {
                    checkInterval: 15,
                    selectors:["body"]
                }
            };
            var activeRequests = 0;
            $(document).ajaxStart(function () {
                if (activeRequests === 0) {
                    Pace.stop();
                    activeRequests++;
                }
            });
            $(document).ajaxStop(function () {
                activeRequests--;
                if (activeRequests === 0) {                    
                    Pace.restart();
                    activeRequests++;
                }
            });
        </script>
        <script src="<?php echo site_url(); ?>js/pace.js"></script>
        <!-- pace.css -->
        <link href="<?php echo site_url(); ?>css/blue/flash.css" rel="stylesheet" type="text/css" />
    </head>