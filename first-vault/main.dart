import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secondapps/VideoActivity.dart';
import 'package:secondapps/main2.dart';


main(){
  runApp(ActivityNavigatorMainIS());
}

class ActivityNavigatorMainIS extends StatelessWidget {
  ActivityNavigatorMainIS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        darkTheme: ThemeData(primarySwatch: Colors.cyan),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home: ActivityNavigatorHome());

  }

}

class ActivityNavigatorHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(
                context, MaterialPageRoute(builder: (context)=>ActivityNavigator1("this is Data sent One Activity"))
            );

          }, child: Text("Go Acriviry 1")),

          ElevatedButton(onPressed: (){
            Navigator.push(
                context, MaterialPageRoute(builder: (context)=>ActivityNavigator2("This is Data Sent One activity ")));
          }, child: Text("Go Acriviry 2")),

          ElevatedButton(onPressed: (){
            Navigator.push(
                context, MaterialPageRoute(builder: (context)=>VideoActiviry()));
          }, child: Text("Go Video Activity")),


        ],
      ),
    );

  }

}
class ActivityNavigator1 extends StatelessWidget {
  String msg;
  ActivityNavigator1(this.msg,  {super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(child: Text("Activiry Navigate 1"),),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ActivityNavigator2("this is Data pass")));
          }, child: Text("Go To Activity 2"))

        ],
      ),
    );

  }

}
class ActivityNavigator2 extends StatelessWidget {
  String msg;
   ActivityNavigator2( this.msg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(child: Text("Activiry Navigate 2 "),),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ActivityNavigatorHome()));
          }, child: Text("Data: "+ msg))




        ],
      ),
    );

  }

}