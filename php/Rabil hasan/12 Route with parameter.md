
### 
-- make new controller
```cmd
php artisan make:controller demoController
```


###
-- demoController.php file
```php 
function MyName($namevalue){
	return $namevalue;
}

```

###
-- web.php file
```php
Route::get('/Name/{namevalue}', 'semoController@MyName');
```