<div class="container">
    <div class="col-md-8">
        <!-- insert the page content here -->
        <?php
        if (!isset($post)) {
            echo "This page was accessed incorrectly";
        } else { //display the post
            ?>
            <h2><?= $post['post_title'] ?></h2>
            <p><?= $post['post'] ?></p>
            <hr>
            <h3 class="text-danger">Comments</h3>
            <?php
            //if there is comments then print the comments
            if (count($comments) > 0) {
                foreach ($comments as $row) {
                    ?>
                    <div class="well">
                        <b class="text-capitalize"><?= $row['username'] ?></b><br>
                        <div class="text-danger fa fa-clock-o">
                            <?= date('D-M-Y h:i A', strtotime($row['date_added'])) ?>
                        </div>                    
                        <?= $row['comment']; ?>
                    </div>
                    <hr>
                    <?php
                }
            } else { //when there is no comment
                echo "<p>No comments yet..</p>";
            }

            if ($this->session->userdata('user_id')) {//if user is loged in, display comment box
                ?>
                <?= form_open("index.php/comments/add_comment/" . $post['post_id']) ?>
                <span class="h4">Comment</span>
                <textarea class="form-control" rows="2" cols="100" name="comment"></textarea>
                <br/>
                <input class="btn btn-default" type="submit" name="add" value="Add comment" />
                <?= form_close(); ?>
                <br/>
                <?php
            } else {//if no user is loged in, then show the loged in button
                ?>
                <a href="<?= base_url() ?>index.php/users/login">Login to comment</a>
                <?php
            }
        }
        ?>   
    </div>
</div>