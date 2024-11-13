![](https://www.youtube.com/watch?v=hXCTrBjc44E&list=PLbC4KRSNcMnqS-J6XxwS9YZZL1WhriQat&index=3)

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
class bank{
	public function __construct(){
		echo "this is constructor";
	}
}
?>

```

file name: common.php
```php
require "account.php";
require "bank.php";

new bank();

```

এখানে সমস্যা তৈরি আছে যা একই নামে দুইটা ফাইলের ক্লাস নাম একই।  এটার সমধান হোল 
`নেম-স্পেস` 
---


file name: account.php
```php
<?php

namespace App\Example
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

namespace App
class bank{
	public function __construct(){
		echo "this is constructor";
	}
}
?>

```

file name: common.php
```php
require "account.php";
require "bank.php";

new App\bank();

```
