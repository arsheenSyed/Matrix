<?php

/**
 * mysql_connect is deprecated
 * using mysqli_connect instead
 */

/*
$databaseHost = 'localhost';
$databaseName = 'zummit40_zummithrms';
$databaseUsername = 'zummit40_root';
$databasePassword = 'Nanite12#';
*/

$databaseHost = 'localhost';
$databaseName = 'matrrix';
$databaseUsername = 'root';
$databasePassword = '';



$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 
 
?>
