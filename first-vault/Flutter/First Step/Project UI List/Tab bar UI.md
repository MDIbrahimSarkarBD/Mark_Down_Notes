#step-1
```dart
import 'package:flutter/cupertino.dart';  
import 'package:flutter/material.dart';  
  
import 'Fragment/AlarmFragment.dart';  
import 'Fragment/BalanceFragment.dart';  
import 'Fragment/ContactFragment.dart';  
import 'Fragment/EmailFragment.dart';  
import 'Fragment/HomeFragment.dart';  
import 'Fragment/PersonFragment.dart';  
import 'Fragment/SearchFragment.dart';  
import 'Fragment/SettingsFragment.dart';  
  
main(){  
  runApp(TapBarIS());  
}  
  
class TapBarIS extends StatelessWidget {  
  TapBarIS({super.key});  
  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      theme: ThemeData(primarySwatch: Colors.deepOrange),  
      darkTheme: ThemeData(primarySwatch: Colors.cyan),  
      color: Colors.blue,  
      debugShowCheckedModeBanner: false,  
      home: TapHomeActivity());  
  
  
  }  
  
}  
  
class TapHomeActivity extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return DefaultTabController(  
        length: 8,  
        child: Scaffold(  
          appBar: AppBar(  
            title: Text("My Tap Bar"),  
            bottom: TabBar(  
              isScrollable: true,  
              tabs: [  
                Tab(icon: Icon(Icons.home), text: "Home",),  
                Tab(icon: Icon(Icons.search), text: "Search",),  
                Tab(icon: Icon(Icons.settings), text: "Settings",),  
                Tab(icon: Icon(Icons.email), text: "Email",),  
                Tab(icon: Icon(Icons.contact_mail), text: "Contact mail",),  
                Tab(icon: Icon(Icons.person), text: "Person",),  
                Tab(icon: Icon(Icons.access_alarm), text: "Alarm",),  
                Tab(icon: Icon(Icons.account_balance), text: "Balance",),  
              ],  
            )  
          ),  
          body: TabBarView(  
            children: [  
              HomeFragment(),  
              SearchFragment(),  
              SettingFragment(),  
              EmailFragment(),  
              ContactFragment(),  
              PersonFragment(),  
              AlarmFragment(),  
              BalanceFragment(),  
            ],  
          ),  
        ));  
  }  
  
}

```

#step-2
this has in Fragment Dir 
```dart
import 'package:flutter/cupertino.dart';  
  
class AlarmFragment extends StatelessWidget{  
  @override  
  Widget build(BuildContext context) {  
    return Container(  
      child: Center(  
        child: Text("Alarm"),  
      ),  
    );  
  }  
    
}
```