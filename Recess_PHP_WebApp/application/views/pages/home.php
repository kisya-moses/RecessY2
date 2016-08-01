<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<div class="tab-content" id="container">
    <div class="tab-pane active" data-value="Home" id="tab-6458-1">
        <div class="container">
            <div class="confess-top">
                <section class="slider">
                    <div class="flexslider">
                        <ul class="slides">
                            <?php for ($m = 1; $m < 6; $m++) { ?>
                                <li>
                                    <div class="confess">
                                        <div class="col-md-7 confess-left">
                                            <img src="<?php echo site_url() . "images/img" . $m . ".jpg"; ?>" width="400" height="300" />
                                        </div>
                                        <div class="col-md-5 confess-right">
                                            <h2>Data science and R programming</h2>
                                            <p>Visualization and analysis of ACLED data using R's advanced tools 
                                                and PHP's web functionality for efficiency. </p>
                                        </div>										
                                        <div class="clearfix"> </div>
                                    </div>
                                </li>
                                <?php
                            }
                            ?>
                            <div class="clearfix"> </div>
                        </ul>
                    </div>
                </section>
            </div>
        </div>
        <!-- FlexSlider -->
        <script type="text/javascript">
            $(document).ready(function () {
                $(window).load(function () {
                    $('.flexslider').flexslider({
                        animation: "slide",
                        start: function (slider) {
                            $('body').removeClass('loading');
                        }
                    });
                });
            });
        </script>
        <!-- FlexSlider -->
        <!-- slider -->
        <div class='container'>
            <h3>Project Description</h3>
            <p class='h5'>
                This Project is an analytics 
                software solution that will 
                <b class='text-primary'>analyze and visualize the violent incidents 
                    that occurred in different parts of Uganda</b> 
                between January 1997 and December 2014
                using the power advanced techniques and visualization tools in 
                the <b class='text-danger'>R Programming language</b>.
            </p>
            <h3>Project Details</h3>
            <ul class='h5' style='list-style-type: decimal'>
                <li>Analysis</li>
                <li>Machine Learning</li>
                <li>Visualizations</li>
            </ul>
        </div>
    </div>
</div>
