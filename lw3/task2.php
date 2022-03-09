<?php

function getGetParameter(string $name): ?string
{
    return isset($_GET[$name]) ? $_GET[$name] : null;
}

$_SERVER['QUERY_STRING'];

$tempString = getGetParameter('identifier');
$flag = true;

if ((is_numeric($tempString[0])) or (empty($tempString))) {
	echo 'no';
	$flag = false;
} 
else {
	while (!(empty($tempString))) {
		if ((is_numeric($tempString[0])) or (ctype_alpha($tempString[0]))) {
			$tempString = substr($tempString, 1);
		} 
		else {
			echo 'no';
			$tempString = '';
			$flag = false;
		}
	} 
}
if ($flag) {
	echo 'yes';
}