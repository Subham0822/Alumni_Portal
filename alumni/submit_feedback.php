<?php
include('admin/db_connect.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $user_id = $_POST['user_id'];
    $feedback = $_POST['feedback'];

    // Insert feedback into the database
    $stmt = $conn->prepare("INSERT INTO feedback (user_id, feedback_text) VALUES (?, ?)");
    $stmt->bind_param("is", $user_id, $feedback);

    if ($stmt->execute()) {
        echo "Thank you for your feedback!";
    } else {
        echo "Error submitting feedback: " . $conn->error;
    }

    $stmt->close();
    $conn->close();
}
?>