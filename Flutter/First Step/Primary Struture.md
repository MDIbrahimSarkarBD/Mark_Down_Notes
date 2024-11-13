
```dart
import 'package:flutter/cupertino.dart';  
import 'package:flutter/material.dart';  
import 'package:flutter/widgets.dart';  
  
main(){  
  runApp(const PlayerIS());  
}  
  
class PlayerIS extends StatelessWidget {  
  const PlayerIS({super.key});  
  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(home:HomeActivity());  
  }  
}  
  
class HomeActivity extends StatelessWidget {  
  const HomeActivity();  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text("First App"),  
     
      ),  
      body:  
      Text("Hello World"),  
        
  }  
}
```



