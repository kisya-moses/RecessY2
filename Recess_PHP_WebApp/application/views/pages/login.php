<div class="text-center" style="margin: 1em;">
    <h2>ACLED Data Analysis System</h2>
</div>
<h4 id="main" style="position: absolute; margin: 3em 3em 2em 37em;">
    <center><?php echo $main; ?></center></h4>
<div class="col-md-4 col-md-offset-4">
    <div class="login-panel panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">Login
                <span style="float:right">
                    <a href="<?php echo site_url(); ?>signup">Create Account</a></span>
            </h3>                
        </div>
        <div class="panel-body loginPage">
            <?php
            /*
             * To change this license header, choose License Headers in Project Properties.
             * To change this template file, choose Tools | Templates
             * and open the template in the editor.
             */
            echo form_open("users/login");
            ?>
            <fieldset>
                <div class="form-group">
                    <?php
                    $loginName = array(
                        "class" => "form-control",
                        "placeholder" => "E-mail",
                        "name" => "username",
                        "type" => "text",
                        "autofocus" => ""
                    );
                    echo form_input($loginName);
                    ?>           
                </div>
                <div class="form-group">
                    <?php
                    $passwd = array(
                        "class" => "form-control",
                        "placeholder" => "Password",
                        "name" => "password",
                        "type" => "password",
                        "value" => ""
                    );
                    echo form_input($passwd);
                    ?>
                </div>
                <input type="hidden" name="user_type" value="admin" />                
                <?php
                $button = array(
                    "type" => "submit",
                    "class" => "btn btn-primary btn-block",
                    "value" => "login",
                    "name" => "Login"
                );
                echo form_input($button);
                ?>
            </fieldset>
            <?php
            echo form_close();
            ?>
        </div>
    </div>
</div>
<script>
    $("#main").fadeOut(5000);
</script>