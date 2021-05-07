<html>
<body>
<!--prevent hackers-->
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">

Thank you for submitting <?php echo $_POST["sub"]; ?><br>
Your translation document is: <?php echo $_POST["translate"]; ?>

</body>
</html>