<?php 
require 'DB.php';
$db_host = 'mysql-svc';
$db_name = 'root';
$db_pass = 'rootpass';
$db_database = 'my_note';
//open database connection
$db = new DB($db_host, $db_name, $db_pass, $db_database);
