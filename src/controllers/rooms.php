<?php

include "../../vendor/autoload.php";
require_once "../database/database.php";

use eftec\bladeone\BladeOne;

$db = new Database;
$result = $db->query('SELECT * FROM rooms LIMIT 9');

$views = '../views';
$cache = '../cache';
$blade = new BladeOne($views,$cache,BladeOne::MODE_DEBUG);
echo $blade->run("rooms",array('rooms'=>$result));