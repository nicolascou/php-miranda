<?php

include "../../vendor/autoload.php";
require_once "../database/database.php";

use eftec\bladeone\BladeOne;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $db = new Database;
    $name = $_POST['full_name'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $subject = $_POST['subject'];
    $message = $_POST['message'];
    $date = date('Y-m-d');
    
    $db->query("INSERT INTO contact 
        (date, name, email, phone, subject, comment, archived)
        VALUES (?, ?, ?, ?, ?, ?, ?)", [$date, $name, $email, $phone, $subject, $message, 0]);
    
    header("Location: contact.php");
} else {
    $views = '../views';
    $cache = '../cache';
    $blade = new BladeOne($views,$cache,BladeOne::MODE_DEBUG);
    echo $blade->run("contact",[]);
}
