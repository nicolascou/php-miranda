<?php

include "../../vendor/autoload.php";
require_once "../database/database.php";

use eftec\bladeone\BladeOne;

$db = new Database;
$rooms = $db->query('SELECT * FROM rooms LIMIT 3 OFFSET 9');

$views = '../views';
$cache = '../cache';
$blade = new BladeOne($views,$cache,BladeOne::MODE_DEBUG);
echo $blade->run("offers",["rooms" => $rooms]);