## Main 
--> runApp()
```dart
main(){  
  runApp(const PlayerIS());  
}
```
## Material App
```dart
return MaterialApp(  
    theme: ThemeData(primarySwatch: Colors.orange),  
    darkTheme: ThemeData(primarySwatch: Colors.blueGrey),  
    color: Colors.blue,  
    debugShowCheckedModeBanner: false,// Ctrl + p more peramiter  
  
  
    home:HomeActivity());
```
## Scaffold
#Scaffold
```dart
return Scaffold(  
  appBar: AppBar(  
      
    title: new Transform(  
      transform: new Matrix4.translationValues(10.0, 0.0, 0.0),  
      child: new Text("Player IS",  
        style: new TextStyle(  
          color: const Color(0xFF444444),  
          fontSize: 16.0,  
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
        
      child:  IconButton(  
        icon: Icon(Icons.menu),  
        tooltip: 'Navigation menu',  
        onPressed: (){ mySnackBar("I am menu button", context);})),  
    leadingWidth: 60,  
    titleTextStyle: TextStyle(color: Colors.white ,fontFamily: 'OpenSan', fontSize: 14, fontWeight: FontWeight.bold),  
    actions: [  
      Padding(  
        padding: EdgeInsets.only(right: 10.0),  
        child: IconButton.outlined(onPressed: (){mySnackBar("I am Comments", context);}, icon: Icon(Icons.add, size: 18,)),),  
      Padding(  
        padding: EdgeInsets.only(right: 10.0),  
        child: IconButton.outlined(onPressed: (){mySnackBar("I am Comments", context);}, icon: Icon(Icons.add, size: 18,)),),  
      Padding(  
        padding: EdgeInsets.only(right: 10.0),  
        child: IconButton.outlined(onPressed: (){mySnackBar("I am Comments", context);}, icon: Icon(Icons.add, size: 18,)),),  
      Padding(  
        padding: EdgeInsets.only(right: 10.0),  
        child: IconButton.outlined(onPressed: (){mySnackBar("I am Comments", context);}, icon: Icon(Icons.add, size: 18,)),),  
    ],  
  
  ),  
  floatingActionButton: FloatingActionButton(  
    elevation: 10,  
    child: Icon(Icons.add),  
    backgroundColor: Colors.orange,  
    hoverColor: Colors.red,  
    onPressed: (){  
      mySnackBar("I ma floting action button", context);  
    },  
  ),  
  bottomNavigationBar: BottomNavigationBar(  
    currentIndex: 1,  
  
    items: [  
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),  
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),  
        BottomNavigationBarItem(icon: Icon(Icons.message_sharp), label: "Message"),  
      ],  
    onTap: (int index){  
      if(index == 0){  
        mySnackBar("I ma Home Button menu", context);  
      }  
      if(index == 1){  
        mySnackBar("I ma Person Button menu", context);  
      }  
      if(index == 2){  
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
  body:  
  Text("Hello World"),  
  // drawer: ,  
  // endDrawer: ,  // bottomNavigationBar: ,  // floatingActionButton: ,  
);
```

## My method
```dart
mySnackBar(message, context){  
  
  return ScaffoldMessenger.of(context).showSnackBar(  
    SnackBar(content: Text(message))  
  );  
}
```
## AppBar Parameter list
>	leading,  
	automaticallyImplyLeading = true,  
	title,  
	actions,  
	flexibleSpace,  
	bottom,  
	elevation,  
	scrolledUnderElevation,  
	notificationPredicate = defaultScrollNotificationPredicate,  
	shadowColor,  
	surfaceTintColor,  
	shape,  
	backgroundColor,  
	foregroundColor,  
	iconTheme,  
	actionsIconTheme,  
	primary = true,  
	centerTitle,  
	excludeHeaderSemantics = false,  
	titleSpacing,  
	toolbarOpacity = 1.0,  
	bottomOpacity = 1.0,  
	toolbarHeight,  
	leadingWidth,  
	toolbarTextStyle,  
	titleTextStyle,  
	systemOverlayStyle,  
	forceMaterialTransparency = false,  
	clipBehavior,  
	clipBehavior, 
## Floating Action Button


```dart
floatingActionButton: FloatingActionButton(  
  elevation: 10,  
  child: Icon(Icons.add),  
  backgroundColor: Colors.orange,  
  hoverColor: Colors.red,  
  onPressed: (){  
    mySnackBar("I ma floting action button", context);  
  },  
),
```

## Bottom Navigation Bar
```dart
bottomNavigationBar: BottomNavigationBar(  
  currentIndex: 1,  
  
  items: [  
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),  
      BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),  
      BottomNavigationBarItem(icon: Icon(Icons.message_sharp), label: "Message"),  
    ],  
  onTap: (int index){  
    if(index == 0){  
      mySnackBar("I ma Home Button menu", context);  
    }  
    if(index == 1){  
      mySnackBar("I ma Person Button menu", context);  
    }  
    if(index == 2){  
      mySnackBar("I ma Message Button menu", context);  
    }  
  },  
  
),
```
## Drawer
```dart
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
```
## Body Parameter list