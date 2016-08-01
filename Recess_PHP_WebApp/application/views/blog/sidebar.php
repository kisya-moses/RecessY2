<div class="col-md-4">
    <div class="panel panel-default">
        <div class="panel-heading">Latest Blog</div>        
        <div class="panel-body">
             <span><?= $posts[0]["post_title"]; ?></span> &#8658;
            <h6 class="text-left text-danger fa fa-clock-o">
                <?= date(' D M d, Y \a\t >> h:i A', strtotime($posts[0]['date_added']))
                ?>
            </h6>
            <p><?= substr(strip_tags($posts[0]['post']), 0, 200) . '...'; ?></p>
            <p><a href="<?= base_url() ?>index.php/blog/post/<?= $posts[0]['post_id'] ?>">Read More</a></p>
        </div>
    </div>
</div>