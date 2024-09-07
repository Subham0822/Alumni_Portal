<?php
include 'admin/db_connect.php';
?>
<style>
    .success-story {
        margin-bottom: 20px;
    }

    .success-story-title {
        font-size: 1.5em;
        font-weight: bold;
    }

    .success-story-content {
        margin-top: 10px;
    }

    .story-card {
        border: 1px solid #ddd;
        padding: 15px;
        border-radius: 10px;
        background-color: #f9f9f9;
        box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
    }

    .container {
        padding: 30px;
    }

    .alumnus-name {
        font-weight: bold;
        color: #555;
    }
</style>

<header class="masthead">
    <div class="container-fluid h-100">
        <div class="row h-100 align-items-center justify-content-center text-center">
            <div class="col-lg-8 align-self-end mb-4 page-title">
                <h3 class="text-white">Success Stories</h3>
                <hr class="divider my-4" />
            </div>
        </div>
    </div>
</header>

<div class="container">
    <div class="row">
        <?php
        // Fetch success stories along with the user's name (assuming success_stories has a user_id foreign key)
        $success_stories = $conn->query("
            SELECT ss.*, u.name as alumnus_name 
            FROM success_stories ss 
            JOIN users u ON ss.user_id = u.id 
            ORDER BY ss.date_created DESC
        ");

        while ($story = $success_stories->fetch_assoc()): ?>
            <div class="col-md-4 success-story">
                <div class="story-card">
                    <h4 class="success-story-title"><?php echo $story['title']; ?></h4>
                    <p class="success-story-content"><?php echo $story['content']; ?></p>
                    <p class="alumnus-name">Alumnus: <?php echo $story['alumnus_name']; ?></p>
                    <small>Posted on: <?php echo date('M d, Y h:i A', strtotime($story['date_created'])); ?></small>
                </div>
            </div>
        <?php endwhile; ?>
    </div>
</div>

<script>
    // Filter functionality (optional)
    $('#filter').keypress(function (e) {
        if (e.which == 13)
            $('#search').trigger('click')
    });

    $('#search').click(function () {
        var txt = $('#filter').val();
        start_load();
        if (txt == '') {
            $('.success-story').show();
            end_load();
            return false;
        }
        $('.success-story').each(function () {
            var content = "";
            $(this).find(".success-story-title, .success-story-content, .alumnus-name").each(function () {
                content += ' ' + $(this).text();
            });
            if ((content.toLowerCase()).includes(txt.toLowerCase())) {
                $(this).show();
            } else {
                $(this).hide();
            }
        });
        end_load();
    });
</script>