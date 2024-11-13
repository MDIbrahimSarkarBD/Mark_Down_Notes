

## Using Environment Variables

```js
const environmnet = {};

environmnet.staging = {
	port: 3000,
	envName: 'production'
}

// determine which environmetn was passed
const currentEnvironment = typeof(process.env.NODE_ENV) === 'string' ?  process.env.NODE_ENV : 'staging';

// export correstponding environment object
const environmentToExport = typeof(environment[currentEnvironment] === 'object' ? environment[currentEnvironnment]) : environment.staging;
																	 
module.exports = environmentToExport;
																	 


```

###
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
const {environment} = require('../handler/environments');

// app object module scaffoling
const app = {}

// configuration
//app.config = {
//	port: 3000;
//}

// create server
app.craeteServer = () => {
const server = http.createServer(app.handleReqRes);
server.listen(environment.port, () => {
	console.log(`listening to port ${environment.port}`);
});
}

// handle Request Response
app.handleReqRes = handlerReqRes;
```

## Data Storage in File System
```js
// Dir create .data and lib in file data.js 

// dependencies
 const fs = require('fs');
 const path = require('path');
 const lib = {}; 

 lib.baseDir = path.join(__dirname, '/../data/');

lib.create = function(dir, file, data, callback){
// open file for writing 
fs.open(lib.basedir+dir+'file'+'.json', 'w')
}


```

## Create Data 

## Read Data
## Update Data

## Delete Data
## Final Words


