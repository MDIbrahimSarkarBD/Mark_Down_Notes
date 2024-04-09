## Kotlin Tutorials Video Playlist
[Video play list](https://www.youtube.com/watch?v=bjZof3NV8js&list=PLgyuGbgggWA3ORqemnq9adIzvNhSXjJTr)
![Video play list](https://www.youtube.com/watch?v=bjZof3NV8js&list=PLgyuGbgggWA3ORqemnq9adIzvNhSXjJTr)

#JDK
### Mastering Kotlin - 000 | JDK 
1. [Oracale JDK](https://www.oracle.com/java/technologies/downloads/)
2. [Amajon Corretto:](https://aws.amazon.com/corretto/)
3. [adoptopenjdk](https://adoptopenjdk.net/releases.html)

- LTS --> Long Time Support
---
## Start code
> fun main (){
> 
> }

#Braces
- package name
- [[Architecture konlin.canvas|Architecture konlin]]
- () প্যারেন্থিসিস
- { } কার্লি ব্রেসেস বা কোড ব্লক 
- [] অ্যারে সাবস্ক্রিপ্ট  
- <> এঙ্গেল ব্রেসেস  (জেনেরিক টাইপ ডিক্লেয়ার করে)
#VariableKotlin
> var myVariable = "Value" ()
> println("Output: $myVariable")
> #val val myConstantVariable = "age"

#longKotlin দশমিক ছাড়া বড় সংখ্যাঃ 15425455555

#FloatKotlin #DaubleKotlin #Escaped
~~~kotlin
val intagerNumber : Int = 32 // max 32 bit
val longNumber: Long = 654555555555 // 64 bit
val floatNumber: Float = 3.6f // 32 bit
val doubleNumber: Double = 12.5f // 64 bit
// 12.5f 'f' use means that float number
val shortNumber: 16 // MAX 16 Bit
val byteNumber: 8 // max 8 bit
~~~
#Charecter #Boolean #String #16numberVideo

```kotlin
val stringText : String = "text any string"
val charecterSymble: Char = 'a'
val booleanTrueFlase: Boolean = true

```

#Array 
```kotlin
val myArray : Array<Int> = arrayOf(2, 8, 9)
val myArray : Array<String> = arrayOf("2", "8", "9")
val myArray : Array<Any> = arrayOf(2, 'h', 9)
val myArray : intArray<Int> = intArrayOf(2, 8, 9)
val myArray : BooleanArray<Int> = booleanArrayOf(2, 8, 9)
val myArray : Array<Int> = arrayOf(2, 8, 9)

```

#Primitive-non-primitive-Kotlin #18numberVideo

#Type-Conversion-Kotlin
```kotlin
val myStringNumber = "12"
/*
toByte()
toShort()
toInt()
toLong()
toFloat()
toDouble()
toChar()
*/
```
#Operator-Kotlin
```kotlin
// Lamda/Arro Oparetor: ->
```


#InputKotlin #outputKotlin
```kotlin
// input user in terminal 
val myinput = String? = readLine()

//output 
println(myinput)
```

#CommentKotlin
```kotlin
// Multi coment short cut way **Enter click


```

## When function is very first
#whenKotlin #WhenRangeKotlin #WhenBranchKotlin #WhenExpression 
```kotlin
var myNumber: Int = 4
when(myNumber){
	// if get 2 value then see printle
	// Multi branch (1,2,5)
	2, 3 ->{
	println("Output Text BY when contition loop")
	}
	// Range 
	in 2..7 ->{
	}
	2 ->{
	println("Output Text BY when contition loop")
	}
	3 ->{
	println("Output Text BY when contition loop")
	}
	4 ->{
	println("Output Text BY when contition loop")
	}
	else{
		Println("Output Text BY when contition loop")
	}
}

// Expression use
val myNumber2: Int 15
val myResult: String =  when(myNumber2){
	2 -> {
	"the value is 2"
	}
	else{
		"are not valid value"
	}
}

```


## For Loop 
#forLoopInKotlin #forloopInStep #forLoopInDownToKotlin
```kotlin
for(i in 0..100){
	println("Hello")
}
// single Line Stetment
for(i in 0..100)
	println("Hello")
// for loop step use
for(i in 0..100 step 1){
	println("$i Hello")
}

// for loop downTo use
for(i in 100 downTo 0 ){
	println("$i Hello")
}
for(i in 100 downTo 0 step 5 ){
	println("$i Hello")
}

// for loop Arrey use
val countryList : Array<String> = arrayOf("Ban","Jap", "Kor", "Chi")
for(c in countryList){
	println(c)
}

for(c in countryList.indices){
	println("$c Country Name: ${countryList[c]}")
}
```

## For-Each Loop
// What 'Iteration' 2.02 
#forEachKorlin
> 
```kotlin
val laptops : Array<String> = arrayOf("Dell", "Apple", "Asus", "HP");

Laptops.forEach { it -> 
	Println(it)
	
}
```

// যদি কোন অ্যারের অবস্থান বের করতে চাই তাহলে #forEachIndexedKotlin ব্যবহার করতে পারি

```kotlin
val laptops : Array<String> = arrayOf("Dell", "Apple", "Asus", "HP");

Laptops.forEachIndexed { index, Laptop -> 

	Println("$index is the on of #laptop")
}
```

## While loop and Do While Loop use
#WhileLoopKotlin #DoWhileLoopKotlin 

```kotlin
	var t : Int = 0
	While(t <= 4){
	println("$t ABC)
	t++
	}
// DO Ehile Loop use
	var i ; Int = 0
	do {
		println("$i TTT)
		i++
	
	}while(i < 4)
	
```






## Loop Control 
#loopControlKotlin #breakKotlin #ContinueKotlin #ReturnKotlin
```kotlin
for(a in 1..10){
	if(i == 5){
		break
	}
	// continue
	if(i == 7){
		continue
	}
	// return use
val alphabete : Array<String> = arrayOf("A", "B", "C", "D", "E")
	// রিটার্ন ব্যবহার করে কন্টিনিউ এর কাজ হয়
	allphabete.forEach myloop@ {
		if(it == "PH"){
			return@forEach
		}
	}
	// রিটার্ন ব্যবহার করে কন্টিনিউ এর কাজ হয়
	allphabete.forEach {
		allphabete.forEach {
		if(it == "PH"){
			return@myloop
		}
	println(it)
	}
	
}
```

## Kotlin Recursive Function
```
```
## # Recursive Function - 2 (tailrec)
## Kotlin Higher order function and lambda
##  Inline Function (inline - noinline - crossinline) - Kotlin
## CharArray - String Template
## String Compare - String Property 49-Video
#stringContainsKotlin #StringCountKotlint #CharSequence-subSequenceKorlin #CharGetKotlin #StringPlusKotlin #conpareToKotlin #DropKotlin #DroplastKotlin #elementAtKotlin #IndexOfKotlin #substringKotlin #StratWithKotlin #EndWithKotlin #CapitalizeKotlin #toLowerCaseKotlin #DecapitalizeKotlin #isBlankKotlin #isEmptyKotlin #isNullOrEmptyKotlin #ReversedKotlin 

#formatKotlin 

```kotlin
val myValue: String = "%.2f".format(7.88555)
```

## Exception Error kotlin
#TryCatchFinallyKotlin #Exception #ArithmaticsException 

## Range DownTo until
#InKotlin #DownToKotlin #untilKotlin #stepKotlin #iteratorKotlin #IntRangeTypeKotlin #IntRangeKotlin #rangeToKotlin #IntProgressionTypeKotlin #firstKotlin #lastKotlin

## Collection (62 Video)
> ## ইমিউটেব্ল কালেকশন ফাংশন
- List : `listOf<Type>()`
- set:  `setOf<Type>()`
- map:  `mapOf<Type, Value>()`

> ## মিউটেব্ল কালেকশন ফাংশন
- List :  `mutableListOf<Type>()`
- set:    `mutableSetOf<Type>()`
- map:  `mutableMapOf<Type, Value>()`































