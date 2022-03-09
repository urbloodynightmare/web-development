<?php

$_SERVER['QUERY_STRING'];
$tempString = $_GET['text'];
echo preg_replace('/\s+/', ' ', $tempString);