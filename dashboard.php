<?php
session_start();
if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
    <h2>Welcome, <?php echo $_SESSION['username']; ?> 👋</h2>
    <p>You are logged in as <strong><?php echo $_SESSION['role']; ?></strong>.</p>

    <?php if ($_SESSION['role'] === 'admin'): ?>
        <p>🔧 Admin Access: You can manage users or settings here.</p>
    <?php else: ?>
        <p>👤 User Access: You have standard user privileges.</p>
    <?php endif; ?>

    <a href="logout.php">Logout</a>
</div>
</body>
</html>
