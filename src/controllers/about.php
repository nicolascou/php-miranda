<?php

include "../../vendor/autoload.php";

use eftec\bladeone\BladeOne;

$views = '../views';
$cache = '../cache';
$blade = new BladeOne($views,$cache,BladeOne::MODE_DEBUG);
echo $blade->run("about",array("variable1"=>"value1"));