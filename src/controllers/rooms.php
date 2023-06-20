<?php

include "../../vendor/autoload.php";

use eftec\bladeone\BladeOne;

$views = '../view';
$cache = '../cache';
$blade = new BladeOne($views,$cache,BladeOne::MODE_DEBUG);
echo $blade->run("rooms",[]);