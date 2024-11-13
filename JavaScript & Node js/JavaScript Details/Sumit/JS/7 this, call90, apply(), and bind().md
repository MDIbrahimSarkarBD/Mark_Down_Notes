## Implicit Binding [](https://www.youtube.com/watch?v=uZqyRJkTQog&list=PLHiZ4m8vCp9Nflbo9a0pZuLscG_Xc7DKq&index=8)

#### Example - 1

```js
var Person = function (name, age){
	return {
		name: name,
		age: age,
		printName: function(){
			console.log(this.name);
		}
	};
	
};

var sakib = Person("sakib", 35);
sakib.printName(); // kakib

```

#### Example - 2
```js
var Person = function (name, age){
	return {
		name: name,
		age: age,
		printName: function(){
			console.log(this.name);
		},
		father: {
		name: "Mr.Ibrahim",
		printName: function(){
			console.log(this.name)
		}}
	};
};

var sakib = Person("sakib", 35);
sakib.printName(); // Sakib
sakib.father.printName(); // Mr Ibrahim
```

## Explicit Binding  
**call() & apply()**  use

#### Call() Example 1
-  
  ```js
  var printName = function (){
    console.log(this.name);
    
}

var sakib = {
    name: "sakib",
    age: 26,
}

var rohim = {
    name: "rohim",
    age: 27,
}

printName.call(rohim);

```
#### Call() Example 2
```js
  var printName = function (v1,v2,v3){
    console.log(`${this.name} ${v2} ${v3}`);
    
}

var sakib = {
    name: "sakib",
    age: 26,
}

var rohim = {
    name: "rohim",
    age: 27,
}
var argument_2 = "is a Businessmen"
printName.call(rohim, "argumernt_1", argument_2, "of in Bangladeshi");

```

#### Apply Example 1
```js
  var printName = function (v1,v2,v3){
    console.log(`${this.name} ${v2} ${v3}`);
    
}

var sakib = {
    name: "sakib",
    age: 26,
}

var rohim = {
    name: "rohim",
    age: 27,
}
var argument_2 = "is a Businessmen"
var funcInstanceReturn = printName.bind(rohim, "argumernt_1", argument_2, "of in Bangladeshi");


```

#### Example - 2
```js


```

#### Example - 1
```js
var printName = function() {
	console.log(this.name)
};

var sakib = {
	name: "Sakib",
	age: 35,
}

PrintName.call(sakib); // Sakib

```

#### Example - 2
```js
var printName = function(v1, v2, v3) {
	console.log(`${this.name} is ${v1}, ${v2}, ${v3}`);
};

var sakib = {
	name: "Sakib",
	age: 35,
}

var v1 = "Hakim";
var v2 = "Noyon",
var v3 = "Ibrahim"

PrintName.call(sakib, v1, v2, v3); // Sakib

```

### Apply()
#### Example - 3
```js
var printName = function(v1, v2, v3) {
	console.log(`${this.name} is ${v1}, ${v2}, ${v3}`);
};

var sakib = {
	name: "Sakib",
	age: 35,
}
var v1 = "Hakim";
var v2 = "Noyon",
var v3 = "Ibrahim"

var = [v1, v2, v3];
PrintName.call(sakib, v1, v2, v3); // Sakib
```

### bind()

> call() bind() একই রকম কাজ করে শুধু  পার্থক্য হলো `bind()` ফাংশনের ইন্সটেন্স রেটার্ন করে .
#### Bind Example - 1
```js
var printName = function(v1, v2, v3) {
	console.log(`${this.name} is ${v1}, ${v2}, ${v3}`);
};

var sakib = {
	name: "Sakib",
	age: 35,
}
var v1 = "Hakim";
var v2 = "Noyon",
var v3 = "Ibrahim"


var newFun = PrintName.bind(sakib, v1, v2, v3); 
newFun(); // 
```

## new Binding

#### without new binding Example - 1

```js
function Person(name, age){
let this = Object.create(null);
	this.name = name,
	this.age = age,
	console.log(`${this.name} is ${this.age year old}`)

	return this;
};

var salib = new Person("Sakib", 35)

```
#### new binding Example - 2

```js
function Person(name, age){

	this.name = name,
	this.age = age,
	console.log(`${this.name} is ${this.age year old}`)
	
};

var salib = new Person("Sakib", 35)

```
## window Binding

#### without binding Example - 1

```js
var PrintName = function() {
	console.log(this.name); // undefined
};

var sakib = {
	name = "Sakib";
};

PrintName();

```



