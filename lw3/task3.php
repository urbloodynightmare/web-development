<?php

$_SERVER['QUERY_STRING'];
$tempString = $_GET['password'];
$reliability = $i = $n = 0;
$length = strlen($tempString);

if (!(ctype_alnum($tempString))) {
    echo "The string $tempString is not a password";
} 
else {
	$reliability += 4*$length;
	for ($i = 0; $i < $length; $i++) {
		if (is_numeric($tempString[$i])) {
			$n++;			
		}
	}
	$reliability += $n*4;
	$n = 0;
	for ($i = 0; $i < $length; $i++) {
		if (ctype_upper($tempString[$i])) {
			$n++;			
		}
	}
	if ($n != 0) {
		$reliability += ($length - $n)*2;
	}
	$n = 0;
	for ($i = 0; $i < $length; $i++) {
		if (ctype_lower($tempString[$i])) {
			$n++;	
		}
	}
	if ($n != 0) {
		$reliability += ($length - $n)*2;
	}
	if (ctype_alpha($tempString)) {
		$reliability -= $length;			
	}
	if (ctype_digit($tempString)) {
		$reliability -= $length;			
	}
	$result = count_chars($tempString);
	foreach ($result as $val) {
		if ($val > 1) {
			$reliability -= $val;
		}
	}	
	echo "The reliability of your password is $reliability";
}
		
