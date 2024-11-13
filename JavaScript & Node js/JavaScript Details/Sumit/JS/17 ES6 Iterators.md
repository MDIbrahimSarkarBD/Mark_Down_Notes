## Video Topic list [](https://www.youtube.com/watch?v=JXzQ0Aarnzc&list=PLHiZ4m8vCp9Nflbo9a0pZuLscG_Xc7DKq&index=18)

1. What is Iterable & Iterator
2. Iterable Protocol 
3. Iterator Protocol
4. Example 1
5. Example 2


## Iterable Protocol
```js
let array = ["A", "b", "c"]
let Iterator = array[symlble.iterator]();

console.log(iterator.next());
console.log(iterator.next());
console.log(iterator.next());
console.log(iterator.next());

```

## Iterator Protocol

```js
let array = ["A", "b", "c"]
let iterator = array[symlble.iterator]();

console.dir(iterator)
```

## Example 1 
```js
String.protorype[Symble.iterator] = function (){
let count = this.length();
return {
	next() {
		if(count > 0 ){
			return {done: false, value: "15"}
			return{done:true}
		}
	}
}
}

console.log([..."Bangladesh"]);
```

## Example 2
```js
function range(start, end, step){
let current = start;
return{
	[Symble.iterator]: function(){
		return {
		next(){
			let result;
			if(current <= end){
				result = {
					done: false,
					value: current
				}
				current += step;
				return result;
			} 
			return {
			done: true,
			}
		}}
	}
}
}

console.log(...range(1, 10000, 5));
```