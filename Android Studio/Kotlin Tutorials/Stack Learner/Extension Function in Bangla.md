#extensionFunctionKotlin  [Video link](https://youtube.com/watch?v=raFkuzCaCO0)

```kotlin
fun main(args: Array<String>){
     // Use Traditional way fuction 
	Println(multipleByFive(10))
	
     // Use  Extension Function
	Println(10.multiplByFive())

}

// Traditional way fuction
fun multipleByFive(value: Int) =  value * 5

// Extension Function 
fun Int.multipleBFive() = this * 5
```