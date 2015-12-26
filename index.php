<?php 

	include_once("model/BDD.php");
	include_once("model/Map.php");
	include_once("model/Debug.php");
	
	$titre = "Index";
	$page = "index";   
	
    try {
    	$map=new Map();
		//$categories = $map->getAllCategory();
		
		if (isset($_POST['submit'])) {
			$jobSearch = $_POST['jobSearch'];
			$uf = $_POST['uf'];		
			$markers = $map->getSearchJobs($jobSearch,$uf);			
			$allMarkersJson = json_encode($markers);
		} else {
			$catMarkers = $map->getMarkersCategory();
			$allMarkersJson = json_encode($catMarkers);
		}		
		require_once("view/Index.php"); 
       
    } catch (Exception $e) {
        $msgError = $e->getMessage();
        require_once("view/Error.php");
    }
?>