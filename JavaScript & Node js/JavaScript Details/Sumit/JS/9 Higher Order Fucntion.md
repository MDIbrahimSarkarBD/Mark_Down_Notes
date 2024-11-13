---
Higher Order Function:
  - একটি ফাংশনের উপর যে ফাংশন আর একটা ফাংশন কাজ করে তাকে `higher Order` ফাংশন হলে।
---


## Video Topic [VideoLink](https://youtu.be/eKrSOaoNHPM)
- Functional Programming
- First Class Function
- Definition of Higher Order Function
- Array.prototype.map()
- Array.prototype.filter()
- Our very Own Map Function

## Higher Order ফাংশন কি তাহলে ?   

>একটি ফাংশনের উপর বা ভিতরে আর একটা ফাংশন কাজ করে তাকে `higher Order` ফাংশন হলে।

#### Higher Order কিভাবে কাজ করে?

> - একটা ফাংশন অন্য একটা ফাংশন কে প্যারেমিটার এর মাধ্যমে বানানো যায়।
> - আবার  একটা ফাংশনের অন্য একটা ফাংশন কে  রিটার্নের করার মাধ্যমে বানানো যায়।

```js
// Higher Order Funtion
function hegherOrderFunction(){
	return function(){
		console.log("Hi, I am Hegher Order Function")
	}
}

// Higher Order Funtion call
hegherOrderFunction()();

``` 


### **Arrow function** কাকে বলে?

> জাভাস্ক্রিপ্ট এ রেগুলার যে ফাংশন লিখি তার সংক্ষিপ্ত রূপকে `arrow function` বলে।


#### **Arrow function** এর সুবিধা ও অসুবিধা

| **Arrow function** এর সুবিধা                                      | **Arrow function** এর অসুবিধা                   |
| ----------------------------------------------------------------- | ----------------------------------------------- |
| এর মাধ্যমে আমরা ফাংশন এর সিনট্যাক্স কে<br>আরো ছোট করে ফেলতে পারি। | হাইয়ার অর্ডার ফাংশন ছাড়া এটা ব্যবহার করা যায় না |
| এতে আমাদের <br>বয়লারপ্লেট কোড অনেক কমে যায়।                       |                                                 |
**উদাহরণঃ**
সাধারন নিয়মে একটা কাজ করি
```js
var productPriceList = [15, 45, 60, 20, 10, 120, 70, 40];

for(i = 0, i > productPriceList.length, i++){ 
	
}
```

আমরা **Arrow function** এর বেশ কিছু উদাহরণ দেখব, আশা করি সেগুলো দেখলে জিনিসগুলো আরো পরিষ্কার হবে।



## Array.prototype.map()

### Traditional way of Example 1 ==without **higher** order function==
```js
var num = [1, 2, 4];

var result = [];

for(let i = 0; i < num.length; i++){
	result.push(num[i] * 2)
}

console.log(result);
```

### Example 1 ==with **higher** order function==

```js
var num = [1, 2, 4];

var result = num.map(function (number){
	return number * 2;
})

console.log(result);
```




## Array.prototype.filter()

#### -Traditional way without filter 
```js
var player = [
{name: 'sakib',
avg: 32.4
},
{name: 'Tamim',
avg: 45.4
},
{name: 'Mushfiq',
avg: 71.4
},
{name: 'Mahmudullah',
avg: 71.4
},
]
var playersWithAvgThirySeven = [];

for(let = 0; i < player.length; i++){
	if(player[i].age >= 37){
		playersWithAvgThirySeven.push([i]);
	}
}

console.log(playersWithAvgThirySeven)
```
#### Example 1 with filter
```js
var player = [
{name: 'sakib',
avg: 32.4
},
{name: 'Tamim',
avg: 45.4
},
{name: 'Mushfiq',
avg: 71.4
},
{name: 'Mahmudullah',
avg: 71.4
},
]
var playerWithAvgThirtySeven = player.filter(function (player){
return player.age >= 37;
});

console.log(playerWithAvgThirtySeven)
```