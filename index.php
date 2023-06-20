<?php

include "vendor/autoload.php";

use eftec\bladeone\BladeOne;

$views = __DIR__ . '/src/views';
$cache = __DIR__ . '/src/cache';
$blade = new BladeOne($views,$cache,BladeOne::MODE_DEBUG);
echo $blade->run("index",array("variable1"=>"value1"));