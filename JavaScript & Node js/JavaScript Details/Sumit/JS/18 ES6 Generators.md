## Video Topic [](https://www.youtube.com/watch?v=DNC6MxpCueY&list=PLHiZ4m8vCp9Nflbo9a0pZuLscG_Xc7DKq&index=19)
1. Iterators quick recap
2. What is Generator
3. Generator Function Syntaxes
4. Example 1
5. Example 2
6. Example 3


## What is Generator

```js
functin* generator(){
return 1
}
functin* generator2(){
	yield 1;
}

let iterator =  generator();

console.log(iterator.next)
```

## Generator Function Syntaxes

```js
function* generator(){}
function * generator(){}
function *generator(){}

let generator = *function(){}

class myClass(){
	*myGenerator(){
	}
}

let objects = {
	*myGenerator(){
	
	}
} 

```

## Example 1 Generator function
```js
ler object = {
	value1: 1,
	value2: 2,
	value3: 3,
	value3: 4
};

Object.prototype[Symbol.iterator] = function (){
	const entries = Object.entries(this);
	let count = entries.length;
	let index = 0;
	
	return {
		next(){
			if(count > 0){
				let result = { done: false, value: entries}
				count--;
				index++;
				return result;
			}
			return { done: true;};
		},
	};
};

//for(let element of object){
//	console.log(elenent);
//}

console.log([...object]);

```

### Convert Generator way

```js
ler object = {
	value1: 1,
	value2: 2,
	value3: 3,
	value3: 4
};

functin *generator(obj){
	const entries = Object.entries(obj);
	for(let element of entries){
		yield element[1];
	}
	return "amy text" 
};

const iterator = generator(object);


conlsole.log(itetator.next());
conlsole.log(itetator.next());


```

## Example 2
```js
function * range(start, end, step){
	let current = start;
while(current <= end ){
	yield current;
	console.log('did you pouse');
	current += step;
}
}

var iterator = range(1, 1000, 2);
console.log(iterator.next())
```



## Example 3
```js
function * generator(a, b){
	let k = yield a + b;
	let m = yield a + b + k;
	
	yield a + b + k + m;
}

var gen = generator(10,20){
console.log(gen.next())
console.log(gen.next(50))
console.log(gen.next(100))
}

```