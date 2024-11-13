
### First Step
```git
php artisan make:middleware middlewareName

```
>path: app>http>Middleware

### Second Step
Kernel.php
```php
'country' => \App\http\Middleware\CountryMiddleware::class,
```

this test: web.php
```php
Route::get('/', function (){
dd(app());
});
```

### Third step
Craete a file: country.blade.php 
```git
 cd resources/views/ 
 touch "country.blade.php" 
```

GitBash: back Command line
```gitbash
 cd ../../
```


```php
Route::get('country', function(){
return view('country');
})->middleware('country');
```

In middleware file:
```php
$array = [
'Bangladesh',
'America',
'Canada',
'Africa'
];

if (in_array($request->country, $array)) {
	return $next($request)
}

return redirect()->to('/');

```



