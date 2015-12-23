<?php 

class BDD {
	var $localhost = "", $user = "", $password = "";
 
    function getBdd() {
    	if ("localhost" == $_SERVER['HTTP_HOST']){ 
			$localhost = 'mysql:host=127.0.0.1;dbname=mapbdd;charset=utf8';
			$user = 'root';
			$password = 'admin';
		} elseif ("domaine-distant" == $_SERVER['HTTP_HOST']){ 
		    $localhost = 'mysql:host=HOST;dbname=BDNAME;charset=utf8';
			$user = 'USER';
			$password = 'PASSWORD';
		}
		 
    	$bdd = new PDO($localhost, $user, $password);
   		$bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		
        return $bdd;
    }
	
}

$BDD = new BDD();
