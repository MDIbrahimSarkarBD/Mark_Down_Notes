```php
Route::get('/home', 'homepage');

Route::get('/about', function (){
return view('aboutpage')
});
```