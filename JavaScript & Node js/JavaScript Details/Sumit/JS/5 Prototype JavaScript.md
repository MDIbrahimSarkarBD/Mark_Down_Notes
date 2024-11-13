### Object Introduction
অবজেক্ট তৈরি করার প্রথম ধাপ হলো `{}` কারলি ব্রাকেটস
```js
let person = {};

person.name = "jamil";
person.age = 30;

person.eat = function(){
    console.log(`person is eating`);
}

person.sleep = function(){
    console.log(`person `);
}
```
---
### Return Object from function
```js
function Person(name, age) {
	let person = {};
	
	person.name = name
	person.age = age
	
	person.eat = function(){
	    console.log(`person is eating`);
	}
	
	person.sleep = function(){
	    console.log(`person `);
	}
}

const sakib = Person('sakib', 35);
const tamil = Person()

```
- এখানে একটা সমস্যা আছে সেটা হোল একই অব্জেক্ট বারবার তৈরি করছিে । যা বড় অ্যাপ্লিকেশন এ অব্জেক্ট দিয়ে ভরে যাবে, যা পারফর্মেন্স খারাব হবে।
- নিচে এটাকে আরো ইফিসিয়েন্ট করা যায় কমন method প্রোপার্টিস গুলো শেয়ার করা যায় এগুলো কমন অবজেক্ট তৈরি করে আমরা রেফার করতে পারি।
- 
### Object Count Optimization
```js

const personMathods = {

	eat(){
	    console.log(`person is eating`);
	},
	
	sleep(){
	    console.log(`person sleeping`);
	},
	play(){
		console.log(`person playing `);
	}
}

function Person(name, age) {
	let person = {};
	
	person.name = name;
	person.age = age;
	
	person.eat = personMathods.eat;
	person.eat = personMathods.sleep;
	person.eat = personMathods.play;
	
}

const sakib = Person('sakib', 35);
const tamil = Person('liton', 25)
```

- এখানে একটা সমস্যা আছে সেটা হোল নতুন একটা প্রোপার্টি বানালে বার বার রেফার করতে হয়। এটি ভাল উপায় না।
- এখানে আমরা চাই অবজেক্ট এর যতো প্রোপার্টি আছে তা অটোমেটিক বা সক্রিও ভাবে রেফার করবে। 
- যা  `Object.create()` মেথড ব্যবহার করা যাবে।
### Object.create() Introduction
```js
const captain =  {
name: "Mashrafi",
age: 36,
country: "Banglasesh"

};

Player = Object.create(captain)
```

![[Screenshot_67.png]]


### Optimization person Object
```js

const personMathods = {

	eat(){
	    console.log(`person is eating`);
	},
	
	sleep(){
	    console.log(`person sleeping`);
	},
	play(){
		console.log(`person playing `);
	}
}

function Person(name, age) {
	let person = Object.create(personMathods)
	
	person.name = name;
	person.age = age;
	
}

const sakib = Person('sakib', 35);
sakib.play();
const tamil = Person('liton', 25)
```
- এখানেও একটা সমস্যা আছে সেটা হলো বার বার  অবজেক্ট শেয়ার করে দিতে হয় যা ভালো একটা উপায় না।
## প্রোটোটাইপ কি?
- প্রোটোটাইপ হলো জাভাস্ক্রিপ্টের যেকোন ফাংশনের প্রোপার্টিস যেটা একটা অবজেক্ট কে পয়েন্ট করে।
## Object.create() [Introduction](https://www.youtube.com/watch?v=Z45VQuHO_VA&list=PLHiZ4m8vCp9Nflbo9a0pZuLscG_Xc7DKq&index=6&t=1020s)

![[Screenshot_71.png]]

## Prototype & Constructor Function
```js
  
// this constractor function 
function Person(name, age) {
  let person = Object.create(Person.prototype);
  
  person.name = name;
  person.age = age;

  return person;
}

  

Person.prototype = {
  eat() {
    console.log(`person is eating`);
  },
  sleep() {
    console.log(`person sleeping`);
  },
  play() {
    console.log(`person playing `);
  },
  display(names) {
  let = 
    console.log(names);
  },
  ditails = fucntion(){
  let details = Object.create(ditails)
  
  }
};


const sakip = Person("sakib", 12);
Person.play();
```

![[Screenshot_72.png]]

## new & this keyword JavaScript
```js
  
// this constractor function 
function Person(name, age) {
  this.name = name;
  this.age = age;
 
}

Person.prototype = {
  eat() {
    console.log(`person is eating`);
  },
  sleep() {
    console.log(`person sleeping`);
  },
  play() {
    console.log(`person playing `);
  },
  display(names) {
  let = 
    console.log(names);
  }
};

const sakip = new Person("sakib", 12);

sakib.play();


```

![[Screenshot_73.png]]

## Prototype to Relapse Class Conversion since 2015
```js
  
class Person {
    constructor(name, age){
        this.name = name;
        this.age = age
    }

  

    eat() {
        console.log(`person is eating`);
      }
      sleep() {
        console.log(`person sleeping`);
      }

      play() {
        console.log(`person playing `);
      }

      display(names) {
        console.log(names);
      }

}

const keya = new Person('keya', 14);
keya.play();

```

![[Screenshot_75.png]]

## Example Array to Prototype
```js
// let person = [];

let person = new Array();

console.log(Array.prototype);
```
![[Screenshot_76.png]]
