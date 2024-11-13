## Right Shift 
 রাইট সিফট এর মাধ্যমে কতগুলা 1 আছে তা চেক  করতে পারবো

```
decimal = 10 

binady = 1010
cnt = 0

while(10 != 0 ){
// n & 1 
// 1010
      1
  ______ 
      0
	if((n & 1) ! = 0 ) {
		cnt++;
	} 
	n = n >> 1
}

```

## Left Shift 

```
n = 10
cnt = 0

for (i=0; i < 32 ; i++){
	if(n & (1 << i)){
	
	}
}
```