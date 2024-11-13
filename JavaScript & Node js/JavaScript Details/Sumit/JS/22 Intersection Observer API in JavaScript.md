## Video Topic [](https://www.youtube.com/watch?v=D1XeL4HF8lI&list=PLHiZ4m8vCp9Nflbo9a0pZuLscG_Xc7DKq&index=23)


### Example - 1

```js
const circle = document.getElementById('circle');

const observer = new IntersectionObserver((items)=>{
items.forEach(item => {
if(item.isIntersecting){
console.log(`${item.target} is vitible`);
}
})
},{
	threshold: 0.5;
});

observer.

```

### Example - 2
```js
const squares = document.querySelectorAll('div');

const observer = new IntersectionObserver((squares)=>{
	squares.forEach(square => {
		if(square.isIntersecting){
		square.target.classList.add("visible");
		}else{
			square.target.classlist.remove('visible');
		}
	})
	
	},{
		threshold: 0.3;
});

observer.forEach((square) => observer.observ(square));
```