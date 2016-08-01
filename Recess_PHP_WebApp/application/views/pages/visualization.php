<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<!-- jQuery -->
<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav in" id="side-menu">
            <li>
                <span href="#V" class="active h3"><i class="fa fa-eye fa-fw"></i>
                    Visualization 
                </span>
            </li>
            <li>
                <a href="#"><i class="fa fa-globe fa-fw">                    
                    </i> National<span class="fa arrow"></span>
                </a>
                <ul class="nav nav-second-level collapse" aria-expanded="false">
                    <li>
                        <a href="#N-FPY" data-value="FPY" data-toggle="tab">Fatality vs Year</a>
                    </li>
                    <li>
                        <a href="#N-IPY" data-value="IPY" data-toggle="tab">interactions vs year</a>
                    </li>
                    <li>
                        <a href="#N-FPR" data-value="FPR" data-toggle="tab">Fatality vs Region</a>
                    </li>
                    <li>
                        <a href="#N-IPR" data-value="IPR" data-toggle="tab">Interactions vs Region</a>
                    </li>
                    <li>
                        <a href="#N-EVI" data-value="EVI" data-toggle="tab">Event Type vs Interactions</a>
                    </li>
                    <li>
                        <a href="#N-EVF" data-value="EVF" data-toggle="tab">Event Type vs Fatality</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li class="">
                <a href="#"><i class="fa fa-globe fa-fw"></i>Regional<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse" aria-expanded="false" style="height: 0px;">
                    <li>
                        <a href="#R-FPD" data-value="FPD" data-toggle="tab">Fatality Vs District</a>
                    </li>
                    <li>
                        <a href="#R-IPD" data-value="IPD" data-toggle="tab" >Interaction Vs District</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#map" data-toggle="tab" data-value="map" >
                    <i class="fa fa-map-marker"></i> Events Map 
                </a>
            </li>
        </ul>
    </div>
    <!-- /.sidebar-collapse -->
</div>
<div id="page-wrapper" class="tab-content">
    <div class="tab-pane" data-value="V" id="V">
        Welcome
    </div>
    <div class="tab-pane" data-value="FPT" id="N-FPY">
        <object class="text-center" type="text/html" 
                data="http://localhost:81/ocpu/library/RECESS.PROJECT/www/fpy.html"
                width="100%" height="800" >
        </object>                    
    </div>
    <div class="tab-pane" data-value="FPR" id="N-FPR">
        <object class="text-center" type="text/html" 
                data="http://localhost:81/ocpu/library/RECESS.PROJECT/www/fpr.html"
                width="100%" height="800" >
        </object>                    
    </div>
    <div class="tab-pane" data-value="IPY" id="N-IPY">
        <object class="text-center" type="text/html" 
                data="http://localhost:81/ocpu/library/RECESS.PROJECT/www/ipy.html"
                width="100%" height="800" >
        </object>                    
    </div>
    <div class="tab-pane" data-value="IPR" id="N-IPR">
        <object class="text-center" type="text/html" 
                data="http://localhost:81/ocpu/library/RECESS.PROJECT/www/ipr.html"
                width="100%" height="800" >
        </object>                    
    </div>
    <div class="tab-pane" data-value="EVI" id="N-EVI">
        <object class="text-center" type="text/html" 
                data="http://localhost:81/ocpu/library/RECESS.PROJECT/www/evi.html"
                width="100%" height="800" >
        </object>                    
    </div>
    <div class="tab-pane" data-value="EVF" id="N-EVF">
        <object class="text-center" type="text/html" 
                data="http://localhost:81/ocpu/library/RECESS.PROJECT/www/evf.html"
                width="100%" height="800" >
        </object> 
    </div>
    <div class="tab-pane" data-value="FPD" id="R-FPD">
        <object class="text-center" type="text/html" 
                data="http://localhost:81/ocpu/library/RECESS.PROJECT/www/fpd.html"
                width="100%" height="800" >
        </object>
    </div>
    <div class="tab-pane" data-value="IPD" id="R-IPD">
        <object class="text-center" type="text/html" 
                data="http://localhost:81/ocpu/library/RECESS.PROJECT/www/ipd.html"
                width="100%" height="800" >
        </object>                    
    </div>
    <div class="tab-pane" data-value="map" id="map">
        <object class="text-center" type="text/html" 
                data="http://localhost:81/ocpu/library/RECESS.PROJECT/www/eventsMap.html"
                width="100%" height="800" >
        </object>        
    </div>
</div>