<header class="masthead">
    <div class="container h-100">
        <div class="row h-100 align-items-center justify-content-center text-center">
            <div class="col-lg-10 align-self-end mb-4" style="background: #0000002e;">
                <h1 class="text-uppercase text-white font-weight-bold">About Us</h1>
                <hr class="divider my-4" />
            </div>
        </div>
    </div>
</header>

<section class="page-section">
    <div class="container">
        <?php echo html_entity_decode($_SESSION['system']['about_content']) ?>
    </div>
</section>

<!-- Feedback and Survey Section -->
<section class="page-section">
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h2>Submit Your Feedback</h2>
                <form action="submit_feedback.php" method="POST">
                    <div class="form-group">
                        <label for="feedback">Your Feedback</label>
                        <textarea class="form-control" id="feedback" name="feedback" rows="5" required></textarea>
                    </div>
                    <input type="hidden" name="user_id" value="<?php echo $_SESSION['user_id']; ?>">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
</section>
