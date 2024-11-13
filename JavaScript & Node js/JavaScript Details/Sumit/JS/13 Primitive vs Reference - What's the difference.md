## Video Topic
1. simple Example
2. Understanding the Concept visually
3. Mutation vs Assignment with example
4. copy References immutably
5. Copy nested References immutably
6. Primitive wrapper Type
7. Primitive are not mutable
8. Pass my Reference/ Value

## Example - 1 Understanding the Concept visually

```js
var a = ["sakib", "Tamim"]

var b = a;


a = []; // assignment
```


## Example - 2
```js
var language = {
	name: "JavaScript",
	estd: "1998",
}

var language2 = {...language};

console.log(language)
console.log(language2)

```

## Copy  References immutably

```js
var language = {
	name: "JavaScript",
	estd: "1998",
	libraries: ["React", "Vue", "jQuery"],
	
}

var language2 = {...language};

language.libraries.push("angular");

console.log(language)
console.log(language2)
```


## Nested Copy  References immutably

```js
var language = {
	name: "JavaScript",
	estd: "1998",
	libraries: ["React", "Vue", "jQuery"],
	
}

//var language2 = {...language};
// Lotas
var language2 = _.cloneDeep(language);

language.libraries.push("angular");

console.log(language);
console.log(language2);
```