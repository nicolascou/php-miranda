<?php

include "../../vendor/autoload.php";

use eftec\bladeone\BladeOne;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!$_POST['check_in'] || !$_POST['check_out']) {
        header('Location: index.php');
        return;
    }
    $check_in = date($_POST['check_in']);
    $check_out = date($_POST['check_out']);
    header('Location: ' . 'rooms.php?checkin=' . $check_in . '&checkout=' . $check_out);
    return;
}

$views = '../views';
$cache = '../cache';
$blade = new BladeOne($views,$cache,BladeOne::MODE_DEBUG);
echo $blade->run("index",[]);