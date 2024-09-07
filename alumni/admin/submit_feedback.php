<?php include('db_connect.php'); ?>

<div class="container">
    <h2>Submitted Feedback</h2>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>#</th>
                <th>Feedback</th>
                <th>Date Submitted</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $feedbacks = $conn->query("SELECT * FROM feedback ORDER BY date_submitted ASC");
            while ($row = $feedbacks->fetch_assoc()):
            ?>
            <tr>
                <td><?php echo $row['id']; ?></td>
                <td><?php echo $row['feedback_text']; ?></td>
                <td><?php echo $row['date_submitted']; ?></td>
            </tr>
            <?php endwhile; ?>
        </tbody>
    </table>
</div>