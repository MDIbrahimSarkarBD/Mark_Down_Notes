```dart
  
import 'package:flutter/cupertino.dart';  
import 'package:flutter/material.dart';  
import 'package:flutter/widgets.dart';  
import 'package:google_fonts/google_fonts.dart';  
main() {  
  runApp( PlayerIS());  
}  
  
class PlayerIS extends StatelessWidget {  
   PlayerIS({super.key});  
  
  
  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
        theme: ThemeData(primarySwatch: Colors.orange, fontFamily: "Lato", ),  
  
        darkTheme: ThemeData(primarySwatch: Colors.blueGrey),  
        color: Colors.blue,  
        debugShowCheckedModeBanner: false,  
        // Ctrl + p more peramiter  
  
        home: HomeActivity());  
  }  
}  
  
class HomeActivity extends StatelessWidget {  
  const HomeActivity();  
  
  mySnackBar(message, context) {  
    return ScaffoldMessenger.of(context)  
        .showSnackBar(SnackBar(content: Text(message)));  
  }  
  
  myAlertDialog(context) {  
    return showDialog(  
        context: context,  
        builder: (BuildContext Context) {  
          return Expanded(  
            child: AlertDialog(  
              title: Text("Alert !"),  
  
              content: Text("Do you want to Delete"),  
              actions: [  
                TextButton(  
                    onPressed: () {  
                      Navigator.of(context).pop();  
                      mySnackBar("Delete Success", context);  
                    },  
                    child: Text("yes")),  
                TextButton(  
                    onPressed: () {  
                      Navigator.of(context).pop();  
                    },  
                    child: Text("No"))  
              ],  
            ),  
          );  
        });  
  }  
  
  myInputDeciratuib(context, text) {  
    TextField(  
      decoration: InputDecoration(  
        border: OutlineInputBorder(),  
        labelText: text  
      ),  
    );  
  }  
  
  @override  
  Widget build(BuildContext context) {  
    // ButtonStyle btnstyle  
    ButtonStyle buttonStyle = TextButton.styleFrom(  
        padding: EdgeInsets.all(5),  
        backgroundColor: Colors.green,  
        foregroundColor: Colors.white,  
        shape: RoundedRectangleBorder(  
            borderRadius: BorderRadius.all(Radius.circular(1)))  
    );  
      
    ButtonStyle submitButtonStyle = ElevatedButton.styleFrom(  
      padding: EdgeInsets.all(10),  
      minimumSize: Size(150, 50),  
      //alignment: Alignment.center,  
  
    );  
  
  
    var myItems = [  
      {"img":"https://rabbil.com/files/rabbilVai.png","title":"Ibrahim"},  
      {"img":"https://rabbil.com/files/rabbilVai.png","title":"Noyon"},  
      {"img":"https://rabbil.com/files/rabbilVai.png","title":"Nurjan"},  
      {"img":"https://rabbil.com/files/rabbilVai.png","title":"Rosnai"},  
      {"img":"https://rabbil.com/files/rabbilVai.png","title":"Korim"},  
      {"img":"https://rabbil.com/files/rabbilVai.png","title":"Nahid"},  
      {"img":"https://rabbil.com/files/rabbilVai.png","title":"Love "},  
      {"img":"https://rabbil.com/files/rabbilVai.png","title":"Ibrahim"},  
    ];  
    return Scaffold(  
        appBar: AppBar(  
          title: new Transform(  
            transform: new Matrix4.translationValues(10.0, 0.0, 0.0),  
            child: new Text(  
              "Player IS",  
              style: GoogleFonts.dancingScript(  
  
                color: const Color(0xFF444444),  
                fontSize: 24.0,  
                fontWeight: FontWeight.w900,  
  
              ),  
            ),  
          ),  
          titleSpacing: 0,  
          centerTitle: false,  
          toolbarHeight: 60,  
          toolbarOpacity: 1,  
          backgroundColor: Colors.amber,  
          elevation: 5,  
          foregroundColor: Colors.blue,  
          shadowColor: Colors.black87,  
          leading: Padding(  
              padding: EdgeInsets.only(left: 12.0),  
              child: IconButton(  
                  icon: Icon(Icons.menu),  
                  tooltip: 'Navigation menu',  
                  onPressed: () {  
                    mySnackBar("I am menu button", context);  
                  })),  
          leadingWidth: 60,  
          titleTextStyle: TextStyle(  
              color: Colors.white,  
              fontFamily: 'OpenSan',  
              fontSize: 14,  
              fontWeight: FontWeight.bold),  
          actions: [  
            Padding(  
              padding: EdgeInsets.only(right: 10.0),  
              child: IconButton.outlined(  
                  onPressed: () {  
                    mySnackBar("I am Comments", context);  
                  },  
                  icon: Icon(  
                    Icons.add,  
                    size: 18,  
                  )),  
            ),  
            Padding(  
              padding: EdgeInsets.only(right: 10.0),  
              child: IconButton.outlined(  
                  onPressed: () {  
                    mySnackBar("I am Comments", context);  
                  },  
                  icon: Icon(  
                    Icons.add,  
                    size: 18,  
                  )),  
            ),  
            Padding(  
              padding: EdgeInsets.only(right: 10.0),  
              child: IconButton.outlined(  
                  onPressed: () {  
                    mySnackBar("I am Comments", context);  
                  },  
                  icon: Icon(  
                    Icons.add,  
                    size: 18,  
                  )),  
            ),  
            Padding(  
              padding: EdgeInsets.only(right: 10.0),  
              child: IconButton.outlined(  
                  onPressed: () {  
                    mySnackBar("I am Comments", context);  
                  },  
                  icon: Icon(  
                    Icons.add,  
                    size: 18,  
                  )),  
            ),  
          ],  
        ),  
        floatingActionButton: FloatingActionButton(  
          elevation: 10,  
          child: Icon(Icons.add),  
          backgroundColor: Colors.orange,  
          hoverColor: Colors.red,  
          onPressed: () {  
            mySnackBar("I ma floting action button", context);  
          },  
        ),  
        bottomNavigationBar: BottomNavigationBar(  
          currentIndex: 1,  
          items: [  
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),  
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),  
            BottomNavigationBarItem(  
                icon: Icon(Icons.message_sharp), label: "Message"),  
          ],  
          onTap: (int index) {  
            if (index == 0) {  
              mySnackBar("I ma Home Button menu", context);  
            }  
            if (index == 1) {  
              mySnackBar("I ma Person Button menu", context);  
            }  
            if (index == 2) {  
              mySnackBar("I ma Message Button menu", context);  
            }  
          },  
        ),  
        drawer: Drawer(  
          child: ListView(  
            children: [  
              DrawerHeader(child: Text("Headr")),  
              ListTile(title: Text("Home")),  
              ListTile(title: Text("Contact")),  
              ListTile(title: Text("Portfolio")),  
              ListTile(title: Text("Email")),  
              ListTile(title: Text("Phone")),  
            ],  
          ),  
        ),  
        body: ListView(  
  
              children: [  
                 
                Container(  
                  child: ListView.builder(  
                    itemCount: myItems.length,  
                    itemBuilder: (context, index){  
                      return GestureDetector(  
                        onTap: (){},  
                        child: Container(  
                          margin: EdgeInsets.all(10),  
                          width: double.infinity,  
                          child: Image.network(myItems[index]['img']!, fit: BoxFit.fill,),  
                        ),  
                      );  
                    },  
                  ),  
                ),  
              ],  
  
        ),  
    );  
  }  
}
```