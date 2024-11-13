###
-- demoController.php file
```php 
function MyName($namevalue,$secondvalue,$thardvalue){
	return "name value:" .  $namevalue; 
}

```


###
-- web.php file
```php
Route::get('/Name/{namevalue}/{secondvalue}/{thardvalue}', 'semoController@MyName');
```
