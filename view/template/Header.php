<!DOCTYPE html>
<html lang="fr">
  <head>
      <!-- Jquery js -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	
  	<!-- balise méta prise en compte par Google -->
  	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<?php echo (!empty($description)) ? $description : ''; ?>">
    <meta name="<?php echo (!empty($robotName)) ? $robotName : ''; ?>" content="<?php echo (!empty($robotContent)) ? $robotContent : ''; ?>" />

    <title><?php echo (!empty($title)) ? $title : ''; ?></title>

    <!-- Bootstrap core CSS --> 
    <link href="common/css/bootstrap.min.css" rel="stylesheet">
    <link href="common/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="common/css/style.css" rel="stylesheet">
    
 
    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>