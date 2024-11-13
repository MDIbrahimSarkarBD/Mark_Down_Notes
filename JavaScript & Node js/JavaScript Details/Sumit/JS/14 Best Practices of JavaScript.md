## Video Topic [](https://www.youtube.com/watch?v=NXsB6VJcscs&list=PLHiZ4m8vCp9Nflbo9a0pZuLscG_Xc7DKq&index=15)
1. Variable Naming
2. Function Naming
3. Function Arguments
4. Single Task per Function
5. Type Checking
6. Default Object Value
7. Prototype Pollution 
8. Conditional Shorthand
9. Method Chaining
10. Avoid eval()
11. Curly Braces
12. Prototype Methods
13. For loop
14. Use Let, const
15. use Semicolon
16. use IIFE
17. Module Pattern
18. Script Source Tag
19. Conclusion

## Default Object Value

bad practice

```js
let shapeconfig = {
	type: "shape",
	width: 300,
	height: null
}

function createShape(config){
	config.type = config.type || "circle";
	config.width = config.width || 300;
	config.height = config.height || 300"circle";
}
```

good practice
```js
let crateShape = {
type: "ccirle",
width: 300
}

function createShape(config){
	config = Object.assing({
		type: "circle",
		width: 300,
		height: 300
	},
	config
	);
}

createShape(shapeConfig);

```



## Method Chaining

bad practice
```js
class Product {
	constructor(name){
		this.name = name;
	}
	setUnits(){
		this.units = units;
	}

	setPrice(){
		this.price = price;
	}

	save(){
	conslole.log(this.name, this.price, this.units);
	}
	
}
```

Good
```js
class Product {
	constructor(name){
		this.name = name;
		return this;
	}
	setUnits(){
		this.units = units;
		return this;
		
	}

	setPrice(){
		this.price = price;
		return this;
		
	}

	save(){
	conslole.log(this.name, this.price, this.units);
	
	}
	
}
```