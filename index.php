<?php 

	include_once("model/BDD.php");
	include_once("model/Map.php");
	include_once("model/Debug.php");
	
	$titre = "Index";
	$page = "index";   
	
    try {
    	$map=new Map();
		$categories = $map->getAllCategory();
		
		if (isset($_POST['marker'])) {
			$tabCheckbox = $_POST['marker'];
			$markers = array(); 
			
				$catMarkers = $map->getMarkersCategory();
				$markers = array_merge($markers, $catMarkers); 
			
			$allMarkersJson = json_encode($markers);
		} else {
			$catMarkers = $map->getMarkersCategory();
			$allMarkersJson = json_encode($catMarkers);
		}		
		require_once("view/vueIndex.php"); 
       
    } catch (Exception $e) {
        $msgErreur = $e->getMessage();
        require_once("view/vueErreur.php");
    }
?>