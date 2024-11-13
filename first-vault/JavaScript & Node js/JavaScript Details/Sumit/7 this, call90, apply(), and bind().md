## Implicit Binding
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


### call()
> call() ফাংশনকে কল  করে .
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
#### Example - 4
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

#### Example - 1

```js
function Person(name, age){
	this.name = name,
	this.age = age,
	console.log(`${this.name} is ${this.age year old}`)
}

var salib = new Person("Sakib", 35)

```


## window Binding

#### Example - 1

```js
var PrintName = function() {
	console.log(this.name); // undefined
};

var sakib = {
	name = "Sakib";
};

PrintName();

```



