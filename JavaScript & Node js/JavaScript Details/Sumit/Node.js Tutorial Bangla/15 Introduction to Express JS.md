- IBM 


## Express 
```js
const express = require('express');

const app = express();

app.get('/', (req, res)=>{
    res.send('This is home page');
});

app.post('/', (req, res)=>{
    res.send('This is home page with past request');
});

app.listen(3000, () =>{
    console.log('Listening on port 3000');
});
```