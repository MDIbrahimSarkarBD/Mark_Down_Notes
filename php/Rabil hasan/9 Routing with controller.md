
terminal
```cmd
php artisan make:controller siteController

```


###  siteController.php

```php 
function home(){
return "I am Site controller ";
}

function About(){

}

function Contact(){

}
```

web.php
```php
Route::get('home', 'siteController@home');
Route::get('About', 'siteController@About');

```

