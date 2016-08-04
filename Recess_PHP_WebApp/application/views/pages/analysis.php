<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav in" id="side-menu">
            <li>
                <span href="#" class="active h3"><i class="fa fa-bar-chart-o fa-fw"></i>
                    Analysis 
                </span>                
            </li>
            <li>
                <a href="#"><i class="fa fa-globe fa-fw">                    
                    </i> National<span class="fa arrow"></span>
                </a>
                <ul class="nav nav-second-level collapse" aria-expanded="false">
                    <li>
                        <a href="#A-FIPY" data-value="A-FPY" data-toggle="tab">Total Fatality and Interactions vs Year</a>
                    </li>
                    <li>
                        <a href="#A-FPY" data-value="FPY" data-toggle="tab">Fatality vs Year</a>
                    </li>
                    <li>
                        <a href="#A-IPR" data-value="IPR" data-toggle="tab">Interactions vs Region</a>
                    </li>
                    <li>
                        <a href="#A-EVI" data-value="EVI" data-toggle="tab">Event Type vs Interactions</a>
                    </li>
                    <li>
                        <a href="#A-EVF" data-value="EVF" data-toggle="tab">Event Type vs Fatality</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
        </ul>
    </div>
    <!-- /.sidebar-collapse -->
</div>
<div id="page-wrapper" class="tab-content">
    <div class="tab-pane" data-value="A-FIPY" id="A-FIPY">
        <object class="text-center" type="text/html" 
                data="http://localhost:81/ocpu/library/RECESS.PROJECT/www/AnalysisFI.html"
                width="100%" height="800" >
        </object>                    
    </div>
    <div class="tab-pane" data-value="A-FPY" id="A-FPY">
        <object class="text-center" type="text/html" 
                data="http://localhost:81/ocpu/library/RECESS.PROJECT/www/Afpy.html"
                width="100%" height="800" >
        </object>                    
    </div>

</div>