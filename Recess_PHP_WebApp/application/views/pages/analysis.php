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
                        <a href="#A-FPY" data-value="FPY" data-toggle="tab">Fatality vs Year</a>
                    </li>
                    <li>
                        <a href="#A-IPR" data-value="IPR" data-toggle="tab">Interactions vs Region</a>
                    </li>
                    <li>
                        <a href="#A-FIPY" data-value="A-FPY" data-toggle="tab">Total Fatality and Interactions vs Year</a>
                    </li>
                    <li>
                        <a href="#N-FPR" data-value="FPR" data-toggle="tab">Fatality vs Region</a>
                    </li>
                    <li>
                        <a href="#N-IPR" data-value="N-IPR" data-toggle="tab">Interactions vs Region</a>
                    </li>
                    <li>
                        <a href="#N-EVI" data-value="N-EVI" data-toggle="tab">Event Type vs Interactions</a>
                    </li>
                    <li>
                        <a href="#N-EVF" data-value="N-EVF" data-toggle="tab">Event Type vs Fatality</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-globe fa-fw">                    
                    </i> Regional <span class="fa arrow"></span>
                </a>
                <ul class="nav nav-second-level collapse" aria-expanded="false">
                    <li>
                        <a href="#A-IPD" data-value="A-IPD" data-toggle="tab">Interactions per district</a>
                    </li>
                    <li>
                        <a href="#A-FPD" data-value="A-FPD" data-toggle="tab">Fatality per District</a>
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
                data="http://localhost:8888/ocpu/library/RECESS.PROJECT/www/AnalysisFI.html"
                width="100%" height="800" >
        </object>                    
    </div>
    <div class="tab-pane" data-value="A-FPY" id="A-FPY">
        <object class="text-center" type="text/html" 
                data="http://localhost:8888/ocpu/library/RECESS.PROJECT/www/Afpy.html"
                width="100%" height="800" >
        </object>                    
    </div>
    <div class="tab-pane" data-value="A-FPD" id="A-FPD">
        <object class="text-center" type="text/html" 
                data="http://localhost:8888/ocpu/library/RECESS.PROJECT/www/Afpd.html"
                width="100%" height="800" >
        </object>                    
    </div>
    <div class="tab-pane" data-value="A-IPD" id="A-IPD">
        <object class="text-center" type="text/html" 
                data="http://localhost:8888/ocpu/library/RECESS.PROJECT/www/AIpd.html"
                width="100%" height="800" >
        </object>                    
    </div>
    <div class="tab-pane" data-value="N-FPR" id="N-FPR">
        <object class="text-center" type="text/html" 
                data="http://localhost:8888/ocpu/library/RECESS.PROJECT/www/Afpr.html"
                width="100%" height="800" >
        </object>                    
    </div>
    <div class="tab-pane" data-value="A-IPR" id="A-IPR">
        <object class="text-center" type="text/html" 
                data="http://localhost:8888/ocpu/library/RECESS.PROJECT/www/Aipr.html"
                width="100%" height="800" >
        </object>                    
    </div>
    <div class="tab-pane" data-value="N-EVI" id="N-EVI">
        <object class="text-center" type="text/html" 
                data="http://localhost:8888/ocpu/library/RECESS.PROJECT/www/evi.html"
                width="100%" height="800" >
        </object>                    
    </div>
    <div class="tab-pane" data-value="N-EVF" id="N-EVF">
        <object class="text-center" type="text/html" 
                data="http://localhost:8888/ocpu/library/RECESS.PROJECT/www/evf.html"
                width="100%" height="800" >
        </object> 
    </div>
</div>