<?php include_once("template/vueHeader.php"); ?>

  <body>

    <?php include_once("template/vueNavbar.php"); ?>
    
    <div id="map-canvas"></div>
    
    <div id="form">
    	<form method="post" id="form" class="form-horizontal formMaps" role="form" action="index.php">
    		 
    		 
    	</form>
    </div>
    <script>
    	var marcador= <?php echo $allMarkersJson ?> 
    </script>

	<?php include_once("template/vueFooter.php"); ?>

	</body>
</html>