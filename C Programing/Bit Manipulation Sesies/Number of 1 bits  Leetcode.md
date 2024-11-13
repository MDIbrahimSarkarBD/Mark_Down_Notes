link [](https://youtu.be/GpkVyrr-sIg?list=PL0G2Ga9ALv6kKWhJAkxU1ZUcwYu7ZFx5N)
Bit counting sets of binary numbers | বাইনারি সংখ্যা সেট বিট কাউন্টিং

```c++
class Solution {

public:

    int hammingWeight(int n) {

        int cnt = 0;

        while(n != 0){

            if((n&1) != 0) cnt++;

            n = (n >> 1);

        }

        return cnt;

    }

};


```

###  left shift 
```c++
class Solution {

public:

    int hammingWeight(int n) {

        int cnt = 0;

  

        for(int i=0; i < 32; i++){

            int x = (1 << i);

            if((x & n) != 0) cnt++;

        }

        return cnt;

    }

};

```