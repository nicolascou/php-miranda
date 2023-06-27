<?php

include "../../vendor/autoload.php";
require_once "../database/database.php";

use eftec\bladeone\BladeOne;

$id = htmlentities($_GET['id']);
if (!$id) {
    http_response_code(404);
    include('404.php');
    exit();
}
$db = new Database;
$room = $db->query('SELECT * FROM rooms WHERE id = ' . $id);
if (!$room) {
    http_response_code(404);
    include('404.php');
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $guest_id = '#' . mt_rand(10000000,99999999);
    $db->query('INSERT INTO bookings 
    (room_id, guest, guest_id, photo, order_date, check_in, check_out, room_type, special_request) 
    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)', 
    [$id, $_POST['name'], $guest_id, '', date('Y-m-d'), $_POST['check_in'], $_POST['check_out'], 'Special Room', $_POST['special_request']]);
    echo "¡Thank you for your request! \n
        We have received it correctly. Someone from our Team will get back to you very soon. \n
        The Miranda Hotel";
    return;
}

$views = '../views';
$cache = '../cache';
$blade = new BladeOne($views,$cache,BladeOne::MODE_DEBUG);
echo $blade->run("room_details",["room" => $room[0]]);