<?php

//Database Constants
//defined('DB_SERVER')? null : define ("DB_SERVER","localhost");
//defined('DB_USER')? null : define ("DB_USER","nireus");
//defined('DB_PASS')? null : define ("DB_PASS","nireus");
//defined('DB_NAME')? null : define ("DB_NAME","sen_db");

defined('DB_SERVER')? null : define ("DB_SERVER","localhost");
defined('DB_USER')? null : define ("DB_USER","root");
defined('DB_PASS')? null : define ("DB_PASS","");
defined('DB_NAME')? null : define ("DB_NAME","conf");

require_once '/../vendor/twig/twig/lib/Twig/Autoloader.php';   #'/path/to/lib/Twig/Autoloader.php';
Twig_Autoloader::register();

//$loader = new Twig_Loader_Filesystem('C:\xampp\htdocs\PatientFile\theme\templates\admin');
$loader = new Twig_Loader_Filesystem('theme/templates/admin'); // relative path
$twig = new Twig_Environment($loader, array(
    
    'cache'       => '/templates/cache',
    'auto_reload' => true
));



?>