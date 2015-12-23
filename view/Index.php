<?php include_once("template/Header.php"); ?>

  <body>

    <?php include_once("template/Navbar.php"); ?>
    
    <div id="map-canvas"></div>
    
    <div id="form">
    	<form method="post" id="form" class="form-horizontal formMaps" role="form" action="index.php">
    		 
    		 
    	</form>
    </div>
    <script>
    	var marcador= <?php echo $allMarkersJson ?> 
    </script>

	<?php include_once("template/Footer.php"); ?>

	</body>
</html>