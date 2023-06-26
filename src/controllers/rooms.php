<?php

include "../../vendor/autoload.php";
require_once "../database/database.php";

use eftec\bladeone\BladeOne;

$db = new Database;
$rooms = $db->query('SELECT * FROM rooms');

if (isset($_GET['checkin']) && isset($_GET['checkout'])) {
    $bookings = $db->query('SELECT * FROM bookings');
    $checkin = htmlentities($_GET['checkin']);
    $checkout = htmlentities($_GET['checkout']);
    $availableRooms = array_filter($rooms, function($room) use ($checkin, $checkout, $bookings) {
        foreach ($bookings as $booking) {
            if ($booking['room_id'] === $room['id']) {
                if ($booking['check_out'] > $checkin && $booking['check_in'] < $checkout) {
                    return false;
                }
            }
        }
        return true;
    });
} else {
    $availableRooms = array_slice($rooms, 0, 9);
}

$views = '../views';
$cache = '../cache';
$blade = new BladeOne($views,$cache,BladeOne::MODE_DEBUG);
echo $blade->run("rooms",array('rooms'=>$availableRooms));