## Video Topic [](https://www.youtube.com/watch?v=pIsFoLAhPrk&list=PLHiZ4m8vCp9Nflbo9a0pZuLscG_Xc7DKq&index=22)

### Example 1
```js
function add(x){
	return 10 + x;
}

const memo = function(fucn) {
	return function (x){
		if(cash[x]){
			console.log('result from cache');
			return cashe[x]
			
		}else{
			console.log('calculating result');
			
			const result func(x);
			cashe[x] = result;
			return result;
		}
	}
}

const calculate = memo(add);

console.log(calculate(10));
```


### Example 2 rest operator
```js
function add(...x){
	return x.reduce((sum, curVal)=> sum + curVal);
}

const memo = function(fucn) {
	return function (...x){
		const key = JSON.stringify(x)
		if(cash[x]){
			console.log('result from cache');
			return cashe[x]
			
		}else{
			console.log('calculating result');
			
			const result func(...x);
			cashe[x] = result;
			return result;
		}
	}
}

const calculate = memo(add);

console.log(calculate(10));
```
