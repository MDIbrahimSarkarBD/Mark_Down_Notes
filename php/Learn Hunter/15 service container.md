```php
Route::get('/', function () {

    dd(app());

    return view('welcome');

});
```

 - AppServiceProvider.php
```php
app->bind('first_service_provider',funtion(){

            dd("This is my sercice continer")

        } )
```