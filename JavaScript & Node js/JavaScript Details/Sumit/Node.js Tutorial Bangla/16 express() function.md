## Video Topic [](https://youtu.be/9plyl7_giFc?list=PLHiZ4m8vCp9PHnOIT7gd30PCBoYCpGoQM)


#### `app.use(express.json());`

```js 
Content-Type: application/json



```

- `app.use(express.row())`
 ```js
 Content-Type: application/octet-stream

```

- `app.use(express.text())`
 ```js
 Content-Type: text/plain

```

- `app.use(express.urlencoded());`

```js
 Content-Type: application/x-www-form-urlencoded

```

- `app.use(express.urlencoded());`

```js
 Content-Type: application/x-www-form-urlencoded

```

- `app.use(express.static( __dirname.replace("src", "") + "public\\", {index: 'home.html'}));`

```js
const express = require('express');

const app = express();
// app.use(express.json());
// app.use(express.raw());
// app.use(express.text());
// app.use(express.urlencoded());

let paths = __dirname.replace("src", "") + "public\\";

app.use(express.static(paths, {index: 'home.html'}));

app.get('/', (req, res)=>{

    res.send('This is home page get ');

});

app.post('/', (req, res)=>{

    console.log(req.body);

    res.send('This is home page with past request');

});

app.listen(3000, () =>{

    console.log('Listening on port 3000' + " http://localhost:" + 3000);

});

// node ./src/dab.js`
```
