<?php
if ($error) {
    ?>
    <h4 id="main" style="position: absolute; margin: 2em 2em 2em 25em;">
        <center><code><?php echo ucwords($error); ?></code></center>
    </h4>
    <?php
}
?>
<div class="text-center" style="margin: 1em;">
    <h2>ACLED Data Analysis System</h2>
</div>
<div class="container">
    <div class="col-md-6 col-md-offset-3">
        <div class="login-panel panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Create Account
                    <span style="float:right">
                        <a href="<?php echo site_url(); ?>login">Login</a></span>
                </h3>                
            </div>
            <div class="panel-body loginPage">
                <?php
                /*
                 * To change this license header, choose License Headers in Project Properties.
                 * To change this template file, choose Tools | Templates
                 * and open the template in the editor.
                 */
                echo form_open("users/register");
                ?>
                <fieldset>
                    <div class="form-group">
                        <?php
                        $loginEmail = array(
                            "class" => "form-control",
                            "placeholder" => "E-mail",
                            "name" => "email",
                            "type" => "email",
                            "autofocus" => ""
                        );
                        echo form_input($loginEmail) . "<br>";

                        $loginName = array(
                            "class" => "form-control",
                            "placeholder" => "Username",
                            "name" => "username",
                            "type" => "text",
                            "autofocus" => ""
                        );
                        echo form_input($loginName) . "<br>";
                        $passwd = array(
                            "class" => "form-control",
                            "placeholder" => "Password",
                            "name" => "password",
                            "type" => "password",
                            "required" => TRUE
                        );

                        $passwd1 = array(
                            "class" => "form-control",
                            "placeholder" => "Confirm Password",
                            "name" => "passconf",
                            "type" => "password",
                            "value" => ""
                        );

                        echo form_input($passwd) . "<br>";
                        echo form_input($passwd1);
                        ?>
                    </div>
                    <div>
                        <input value="admin" type="hidden" name="user_type"/>
                    </div>
                    <div class="checkbox">
                        <label>
                            <?php
                            $remMe = array(
                                "name" => "AcceptTerms",
                                "type" => "checkbox",
                                "value" => "Remember Me",
                                "required" => TRUE
                            );
                            echo form_checkbox($remMe);
                            ?>
                            Accept Terms </label>
                    </div>
                    <!-- Change this to a button or input when using this as a form -->
                    <?php
                    $button = array(
                        "type" => "submit",
                        "class" => "btn btn-primary btn-block",
                        "value" => "SignUp",
                        "name" => "SignUp"
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
</div>
<script>
    $("#main").fadeOut(8000);
</script>