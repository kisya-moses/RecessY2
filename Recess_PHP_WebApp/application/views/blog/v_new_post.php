<div class="container">
    <div class="col-lg-8 col-lg-offset-2">
        <!-- page content here -->
        <div class="panel panel-default">
            <div class="panel-heading">New Post</div>        
            <div class="panel-body">
                <?php echo form_open("index.php/blog/new_post"); ?>
                <div class="form_settings">
                    <div>
                        <input class="form-control" type="text" name="post_title" value="" placeholder="Title" autofocus=""/>
                    </div>
                    <br/>
                    <textarea placeholder="blog text..." class="form-control" rows="15" cols="50" name="post"></textarea>
                    <br/>
                    <input class="btn btn-primary" type="submit" name="add" value="Publish" />
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</div>