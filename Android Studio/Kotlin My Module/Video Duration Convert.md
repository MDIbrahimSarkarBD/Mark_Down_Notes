## Video Duration Convert to Time  Format 
#formatTimeString


```kotlin
fun formatTimeString(durationInMillis: Long): String {  
    val hours = durationInMillis / (1000 * 60 * 60)  
    val minutes = (durationInMillis % (1000 * 60 * 60)) / (1000 * 60)  
    val seconds = ((durationInMillis % (1000 * 60 * 60)) % (1000 * 60)) / 1000  
  
    return if(hours >= 1){  
        String.format("%02d:%02d:%02d", hours, minutes, seconds)  
    }else{  
        String.format("%02d:%02d",  minutes, seconds)  
    }  
      
}

```




## Counting Number
#countingNumber
- Step-1
> Global Variable Declare
~~~ kotlin
private var counter = 0 
~~~

- Step-2
> function Declare
```kotlin
fun incrementCounter() {  
    counter++  
    // Increment into Couner update UI Screen
    updateCounterText()  
}  
  
fun decrementCounter() {  
    if (counter > 0) {  
        counter--  
        // Decrement into Couner update UI Screen
        updateCounterText()  
    }  
}  

// Decliare fuction show the User Interface 
private fun updateCounterText() {  
    counterTextView.text = "Counter: $counter"  
}
```



## Schedule Time Count
#scheuleFixTimeCount

```kotlin
// <--- Schedule Time Count  
timer = Timer()  
  
// Schedule a TimerTask to increment the counter every second  
timer.scheduleAtFixedRate(object : TimerTask() {  
    override fun run() {  
        runOnUiThread {  
            incrementCounter()  
        }  
    }  
}, 3000, 1000) // Delay of 1000ms (1 second), and repeat every 1000ms (1 second)  
// --- Schedule Time Count --->

```