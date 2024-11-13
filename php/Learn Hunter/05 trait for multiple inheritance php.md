file name: account.php
```php
<?php
class bank{
	public function __construct(){
		echo "this is constructor account";
	}
}
?>
```

file name: bank.php

```php
<?php
trait Bank {
	public function abc(){
	echo "Its cases from abc fuction";
	}

	public function efg(){
	echo "Its case from efg function"
	}
}
?>

```

file name: common.php
```php
<?php
require 'bank.php';

class Bar{
	use Bank;
}

$object = new Bar();

$object->abc();
$object->efg();


?>
