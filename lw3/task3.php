<?php

function getGetParameter(string $name): ?string
{
    return isset($_GET[$name]) ? $_GET[$name] : null;
}

if (getGetParameter("password") === null) 
{
	return;
}

$password = getGetParameter("password");
$len = strlen($password);

if (!(ctype_alnum($password))) 
{
    echo "$password is not a password";
} 
else 
{
	$reliability += 4*$len;
	for ($i = 0; $i < $len; $i++) 
	{
		if (is_numeric($password[$i])) 
		{
			$n++;			
		}
	}
	$reliability += $n*4;
	$n = 0;
	for ($i = 0; $i < $len; $i++)
	{
		if (ctype_upper($password[$i]))
		{
			$n++;			
		}
	}
	if ($n !== 0)
	{
		$reliability += ($len - $n)*2;
	}
	$n = 0;
	for ($i = 0; $i < $len; $i++)
	{
		if (ctype_lower($password[$i]))
		{
			$n++;	
		}
	}
	if ($n !== 0)
	{
		$reliability += ($len - $n)*2;
	}
	$n = 0;
	if (ctype_alpha($password))
	{
		$reliability -= $len;			
	}
	if (ctype_digit($password))
	{
		$reliability -= $len;			
	}
	$result = count_chars($password);
	foreach ($result as $val)
	{
		if ($val > 1)
		{
			$reliability -= $val;
		}
	}	
	echo "Reliability : $reliability";
}