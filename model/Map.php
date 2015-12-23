<?php 
class Map extends BDD{ 
	
    function getAllMarkersActif($markerActif = "Oui", $iconeActif = "Oui" ) {
        $bdd = parent::getBdd();
		
		$sql = "SELECT * ";
		$sql .= "FROM `markers` as MK, `markers_icone` as MKI ";
		$sql .= "WHERE MK.marker_categorie = MKI.icone_id ";
		$sql .= "AND `marker_actif` = '".$markerActif."' ";
		$sql .= "AND `icone_actif` = '".$iconeActif."' ";
		
        $datas = $bdd->query($sql);
		
		while ($resultat = $datas->fetch(PDO::FETCH_OBJ)) {
            $count[] = $resultat;
        }
		
		return $count; 
    }
	 
    function getMarkersCategory() {
        $bdd = parent::getBdd();
		
		$sql = "SELECT * FROM MARCAR";
		
        $datas = $bdd->query($sql);
		
		while ($resultat = $datas->fetch(PDO::FETCH_OBJ)) {
            $count[] = $resultat;
        } 
		return $count;  
    }
	
 
    function getAllCategory( ) {
        $bdd = parent::getBdd( );
		
		$sql = "SELECT * ";
		$sql .= "FROM `markers_icone` as MKI ";
		$sql .= "WHERE MKI.icone_actif = 'Oui' ";
		
        $datas = $bdd->query($sql);
		
		while ($resultat = $datas->fetch(PDO::FETCH_OBJ)) {
            $count[] = $resultat;
        } 
		return $count;  
    }
}