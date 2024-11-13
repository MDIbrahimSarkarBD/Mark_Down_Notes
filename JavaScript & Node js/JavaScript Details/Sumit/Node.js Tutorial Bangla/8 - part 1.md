## Raw Node.js Project Uptime Monitoring API

1. Start the API Server
2. Create, Edit, Delete User
3. Token based authentication
4. Logout Mechanism
5. Set links & Up/Down
6. Edit/Delete links & rate limit
7. Check up/down time

### Create a Server
```js
/*
* Title:
* Description:
* Author: Ibrahim sarkar
* Date: 30/05/2024
*
*/


// dependencies
const http = require('http');

// app object module scaffoling
const app = {}

// configuration
app.config = {
	port: 3000;
}

// create server
app.craeteServer = () => {
const server = http.createServer(app.handleReqRes);
server.listen(app.config.port, () => {
	console.log(`listening to port ${app.config}`);
});
}

// handle Request Response
app.handleReqRes = () => {
	// Response handle
	res.end('hello world');
}



```


## Parsing Request
```js
/*
* Title:
* Description:
* Author: Ibrahim sarkar
* Date: 30/05/2024
*
*/


// dependencies
const http = require('http');
const url  = require('url');
const {StringDecoder} =  require('string_decoder');
// app object module scaffoling
const app = {}

// configuration
app.config = {
	port: 3000;
}

// create server
app.craeteServer = () => {
const server = http.createServer(app.handleReqRes);
server.listen(app.config.port, () => {
	console.log(`listening to port ${app.config}`);
});
}

// handle Request Response
app.handleReqRes = (req, res) => {
	// Request handle
	// get 
	const parseUrl = url.parse(req.url, true);
	const path = parseUrl.pathname;
	const trimmedPath = path.replace(/^\/+|\/+$/g, '');
	const method = req.method.toLowerCase();
	const	queqyStringObject = parseUrl.query;
	const headersObject = req.headers;
	
	const decorder = new StringDecoder('utf-8');
	let realData = '';
	
	req.on('data', (buffer) =>{
		realData += decoder.write(buffer);
	});

	req.on('end', () => {
		realData += decoder.end();
		console.log(realData);
	});
	// Response handle
	res.end('hello world');
}


```


## Refactor code

- Create Dir helpers into 
```js
/*
* Title: Handle Requwst Response
* Description: Handle Request and response
* Author: Ibrahim sarkar
* Date: 30/05/2024
*
*/

// Depent
const url  = require('url');
const {StringDecoder} =  require('string_decoder');

const handler = {};


handler.handleReqRes = (req, res) => {
	// Request handle
	// get 
	const parseUrl = url.parse(req.url, true);
	const path = parseUrl.pathname;
	const trimmedPath = path.replace(/^\/+|\/+$/g, '');
	const method = req.method.toLowerCase();
	queqyStringObject = parseUrl.query;
	const headersObject = req.headers;
	
	const decorder = new StringDecoder('utf-8');
	let realData = '';
	
	req.on('data', (buffer) =>{
		realData += decoder.write(buffer);
	});

	req.on('end', () => {
		realData += decoder.end();
		console.log(realData);
	});
	// Response handle
	res.end('hello world');
}



module.exports = handler;

```

#### Final index.js
```js
/*
* Title:
* Description:
* Author: Ibrahim sarkar
* Date: 30/05/2024
*
*/


// dependencies
const http = require('http');
const {handlerReqRes} = require('./helpers/handleReqRes'); 
// app object module scaffoling
const app = {}

// configuration
app.config = {
	port: 3000;
}

// create server
app.craeteServer = () => {
const server = http.createServer(app.handleReqRes);
server.listen(app.config.port, () => {
	console.log(`listening to port ${app.config}`);
});
}

// handle Request Response
app.handleReqRes = handlerReqRes;

```

## Routing Setup

#### Create file routes.js
```js
/*
* Title: Routes
* Description: Application Routes
* Author: Ibrahim sarkar
* Date: 30/05/2024
*
*/
const {samoleHandler} = require('.//handlers//routehandlers/sampleHandler');

const routes = {
	'sample': sampleHandler,
	'about': 
}
```

#### Create Dir Handlers into file make routeHandlers
```js
/*
* Title: Sample Handler
* Description:sample handler
* Author: Ibrahim sarkar
* Date: 30/05/2024
*
*/

// module scaffolding
const handler = {};

handler.samoleHandler = () => {
	console.log('Sample');
}

module.exports = handler;
```

##### not found handler 
```js
/*
* Title: Sample Handler
* Description:sample handler
* Author: Ibrahim sarkar
* Date: 30/05/2024
*
*/

// module scaffolding
const handler = {};

handler.samoleHandler = () => {
	console.log('Sample');
}

module.exports = handler;
```


##### not found handler 
```js
/*
* Title: Sample Handler
* Description:sample handler
* Author: Ibrahim sarkar
* Date: 30/05/2024
*
*/

// module scaffolding
const handler = {};

handler.samoleHandler = () => {
	console.log('Sample');
}

module.exports = handler;
```
