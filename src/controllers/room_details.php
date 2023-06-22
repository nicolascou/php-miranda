<?php

include "../../vendor/autoload.php";
require_once "../database/database.php";

use eftec\bladeone\BladeOne;

$id = htmlentities($_GET['id']);
if (!$id) {
    http_response_code(404);
    include('404.php');
    die();
}
$db = new Database;
$room = $db->query('SELECT * FROM rooms WHERE id = ' . $id);
if (!$room) {
    http_response_code(404);
    include('404.php');
    die();
}

$views = '../views';
$cache = '../cache';
$blade = new BladeOne($views,$cache,BladeOne::MODE_DEBUG);
echo $blade->run("room_details",["room" => $room[0]]);