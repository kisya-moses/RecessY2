<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<body>
    <nav class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <span class="navbar-brand "><a href="<?php echo site_url(); ?>">ACLED Data Analysis System</a></span>
            </div>
            <ul class="nav navbar-nav navbar-top-links navbar-right">
                <li class="<?php echo $home; ?>">
                    <a class="fa fa-home" href="<?php echo site_url(); ?>"> Home </a>
                </li>
                <li class="<?php echo $visualization; ?>">
                    <a class="fa fa-area-chart" href="<?php echo site_url(); ?>visualization" > Visualization </a>
                </li>
                <li class="<?php echo $analysis; ?>">
                    <a class="fa fa-calculator" href="<?php echo site_url(); ?>analysis"> Analysis </a>
                </li>
                <li class="<?php echo $blog; ?>">
                    <a href="<?php echo site_url(); ?>blog"> Blog </a>
                </li>
                <li class="<?php echo $help; ?>">
                    <a class="fa fa-support" href="<?php echo site_url(); ?>help"> Help </a>
                </li>
                <?php
                if (isset($_SESSION["username"])) {
                    ?>
                    <li class="<?php echo $login; ?>">
                        <a class="fa fa-sign-out logout" href="<?php echo site_url(); ?>logout">logout                          
                            <span class="status">[ <?= $_SESSION["username"] ?> ]</span>
                        </a> 
                    </li>
                    <?php
                } else {
                    ?>
                    <li class="<?php echo $login; ?>">
                        <a class="fa fa-sign-in" href="<?php echo site_url(); ?>login"> login </a>
                    </li>
                <?php } ?>
                <li class="sidebar-search" style="width: 15em">
                    <div class="input-group custom-search-form" style="margin-top: 10px;">
                        <input type="text" class="form-control" placeholder="Search..." id="search">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button" id="Sbtn">
                                <i class="fa fa-search"></i>
                            </button>
                        </span>
                    </div>
                    <!-- /input-group -->
                </li>
            </ul>
        </div>              
    </nav>  