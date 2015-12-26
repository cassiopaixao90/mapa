<?php include_once("template/Header.php"); ?>

  <body>

    <?php include_once("template/Navbar.php"); ?>
    
    <div id="map-canvas"></div>
    
    
    <div id="form">
    	<form method="post" id="form" class="form-horizontal formMaps" role="form" action="index.php">
		    <div class="ui-widget"> 
				 <input class="form-control" id="skills" type="text"name="jobSearch">
				 <select class="form-control" name="uf">
				 	<option value="0">UF</option>
				 	<option value="1">PE</option>
				 </select>
				 <li><a href="javaScript:void(0)" onclick="pesquisar()"><i class="icon-pencil icon-2x"></i>Pesquisar</a></li>
				 
			</div>		    		 
    	</form>
    </div>
    <script>
    	var marcador= <?php echo $allMarkersJson ?>
    </script>

	<?php include_once("template/Footer.php"); ?>

	</body>
</html>