## Video Topic
1. Definition
2. Use Case - for loop
3. Convert loop to Recursive function
4. Execution/call Stack Overflow
5. Solution
## What is recursion
যখন একটা ফাংশনের নিজের বডির ভিতরে নিজেকেইন কল করে তখন তাকে রিকার্শন ।
#### Example 2 with recursion [](https://www.youtube.com/watch?v=ueJiRQK6FYY&list=PLHiZ4m8vCp9Nflbo9a0pZuLscG_Xc7DKq&index=12)
```js
let myfun = function (){
	myfun();
}

```
#### Example 2 with recursion
- use Case for loop
```js
let total = 0;
let n = 3;

for(let i = 1; i<=n; i++){
	total += i;
}

console.log(total)
```


