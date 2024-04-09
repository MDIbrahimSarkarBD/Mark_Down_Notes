
## Basic widgets
### Text Widget
	```dart
	Container( width: 100, decoration: BoxDecoration(border: Border.all()), child: Text(overflow: TextOverflow.ellipsis, 'Hello $_name, how are you?'))
	```

### Row Widget , 
#Expanded 
[This example divides the available space into three (horizontally), and places text centered in the first two cells and the Flutter logo centered in the third:](https://api.flutter.dev/flutter/widgets/Row-class.html#widgets.Row.1)

```dart
const Row( children: <Widget>[ Expanded( child: Text('Deliver features faster', textAlign: TextAlign.center), ), Expanded( child: Text('Craft beautiful UIs', textAlign: TextAlign.center), ), Expanded( child: FittedBox( child: FlutterLogo(), ), ), ], )
```

### Expanded Column Sample
##### Center Column
#example-1
```Dart
Center(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 200,
            width: 100,
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
            ),
          ),
          Container(
            color: Colors.blue,
            height: 150,
            width: 100,
          ),
        ],
      ),
    );
```

#### Vetical column
```dart
Column(  
  mainAxisAlignment: MainAxisAlignment.start,  
      children: [  
        Container(  
          height: 50,  
          margin: EdgeInsets.only(top: 20),  
          child:  
          ListView(  
            shrinkWrap: true,  
            //reverse: true,  
  
            scrollDirection: Axis.horizontal,  
            children: [  
              Expanded(  
                flex: 1,  
                child: TextButton(  
                  onPressed: () {  
                    mySnackBar("Text Button Click", context);  
                    myAlertDialog(context);  
                  },  
                  child: Text("Text Button First"),  
                  style: buttonStyle,  
                ),  
              ),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button Last"),  
                  )),  
            ],  
  
            ),  
        ),  
        Container(  
          height: 300,  
          margin: EdgeInsets.only(top: 20),  
          child:  
          ListView(  
            shrinkWrap: true,  
            //reverse: true,  
  
            scrollDirection: Axis.vertical,  
            children: [  
              Row(  
                crossAxisAlignment: CrossAxisAlignment.start,  
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
                children: [  
                  Column(  
                    crossAxisAlignment: CrossAxisAlignment.center,  
                    children: [  
                      Text("1 data"),  
                      Text("3 data"),  
                      Text("4 data"),  
                    ],  
  
                  ),  
                  Column(  
                    crossAxisAlignment: CrossAxisAlignment.center,  
                    children: [  
                      Text("1 data"),  
                      Text("3 data"),  
                      Text("4 data"),  
                    ],  
                  ),  
                  Column(  
                    crossAxisAlignment: CrossAxisAlignment.center,  
                    children: [  
                      Text("1 data"),  
                      Text("3 data"),  
                      Text("4 data"),  
                    ],  
                  ),  
                  Column(  
                    crossAxisAlignment: CrossAxisAlignment.center,  
                    children: [  
                      Text("1 data"),  
                      Text("3 data"),  
                      Text("4 data"),  
                    ],  
                  ),  
  
                ],  
              ),  
              Row(  
                crossAxisAlignment: CrossAxisAlignment.start,  
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
  
                children: [  
                  Expanded(child:Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'First Name',),)),),  
                  Expanded(child:Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Last Name',),)),),  
                ],  
              ),  
              Column(  
                mainAxisAlignment: MainAxisAlignment.start,  
                children: [  
                  Row(  
                    crossAxisAlignment: CrossAxisAlignment.start,  
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
                    children: [  
                      Expanded(child:Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'First Name',),)),),  
                    ],  
                  ),  
                  Row(  
                    crossAxisAlignment: CrossAxisAlignment.start,  
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
                    children: [  
                      Expanded(child:Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'First Name',),)),),  
                    ],  
                  ),  
                  Row(  
                    crossAxisAlignment: CrossAxisAlignment.start,  
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
                    children: [  
                      Expanded(child:Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'First Name',),)),),  
                    ],  
                  ),  
                ],  
              ),  
              Expanded(  
                flex: 1,  
                child: TextButton(  
                  onPressed: () {  
                    mySnackBar("Text Button Click", context);  
                    myAlertDialog(context);  
                  },  
                  child: Text("Text Button First"),  
                  style: buttonStyle,  
                ),  
              ),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      hintText: 'Enter a search term',  
                    ),  
                  ),  
              ),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button Last"),  
                  )),  
            ],  
  
          ),  
        ),  
          
  
  
  
  
      ],  
  
),
```
### Expanded Row Sample
#example-1
```dart
Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.amber,
              height: 100,
            ),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 50,
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              height: 100,
            ),
          ),
        ],
      ),
    );
```
#### Expanded Row Sample
This example divides the available space into three (horizontally), and places text centered in the first two cells and the Flutter logo centered in the third:

```dart
const Row( children: <Widget>[ Expanded( child: Text('Deliver features faster', textAlign: TextAlign.center), ), Expanded( child: Text('Craft beautiful UIs', textAlign: TextAlign.center), ), Expanded( child: FittedBox( child: FlutterLogo(), ), ), ], )
```

#### Expanded Row Sample
The fix is to wrap the second child in an Expanded widget, which tells the row that the child should be given the remaining room:

```dart
const Row( children: <Widget>[ FlutterLogo(), Expanded( child: Text("Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android."), ), Icon(Icons.sentiment_very_satisfied), ], )
```



### Stack Widget
[#example-1 ](https://api.flutter.dev/flutter/widgets/Stack-class.html#widgets.Stack.1)
```dart
Stack( children: <Widget>[ Container( width: 100, height: 100, color: Colors.red, ), Container( width: 90, height: 90, color: Colors.green, ), Container( width: 80, height: 80, color: Colors.blue, ), ], )
```
[#example-2](https://api.flutter.dev/flutter/widgets/Stack-class.html#widgets.Stack.2)
```dart
SizedBox( width: 250, height: 250, child: Stack( children: <Widget>[ Container( width: 250, height: 250, color: Colors.white, ), Container( padding: const EdgeInsets.all(5.0), alignment: Alignment.bottomCenter, decoration: BoxDecoration( gradient: LinearGradient( begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: <Color>[ Colors.black.withAlpha(0), Colors.black12, Colors.black45 ], ), ), child: const Text( 'Foreground Text', style: TextStyle(color: Colors.white, fontSize: 20.0), ), ), ], ), )
```
### Container Widget
[#example-1 ](https://api.flutter.dev/flutter/widgets/Container-class.html#widgets.Container.1)
```dart
Center( child: Container( margin: const EdgeInsets.all(10.0), color: Colors.amber[600], width: 48.0, height: 48.0, ), )
```

[#example-2 ](https://api.flutter.dev/flutter/widgets/Container-class.html#widgets.Container.2)
```dart
Container( constraints: BoxConstraints.expand( height: Theme.of(context).textTheme.headlineMedium!.fontSize! * 1.1 + 200.0, ), padding: const EdgeInsets.all(8.0), color: Colors.blue[600], alignment: Alignment.center, transform: Matrix4.rotationZ(0.1), child: Text('Hello World', style: Theme.of(context) .textTheme .headlineMedium! .copyWith(color: Colors.white)), )
```

### Flutter Button Type
- Elevated Button
- Text Button
- Outline Button
#style
```dart
ButtonStyle buttonStyle = TextButton.styleFrom(  
  padding: EdgeInsets.all(5),   
  backgroundColor: Colors.green,  
  foregroundColor: Colors.white,  
  shape: RoundedRectangleBorder(  
    borderRadius: BorderRadius.all(Radius.circular(1))  
  )
```

#textButton
```dart
TextButton(onPressed: (){  
  mySnackBar("Text Button Click", context);},  
  child: Text("Text Button First"),  
  style: buttonStyle,),  
)
```
### List View Scrolling
#### List View Vertical
##### example-1

```dart
ListView(  
  
    reverse: true,  
    scrollDirection: Axis.vertical,  
    physics: NeverScrollableScrollPhysics(),  
    children: [Container(  
  
      alignment: Alignment.topCenter,  
      margin: EdgeInsets.all(0),  
      padding: EdgeInsets.all(40),  
      decoration: BoxDecoration(  
          color: Colors.blue,  
          border: Border.all(color: Colors.white, width: 5)  
      ),  
      child: Column(  
  
  
        children: [  
  
          Row(  
            children: [ Expanded( child: Text('Deliver features faster', textAlign: TextAlign.center), ), Expanded( child: Text('Craft beautiful UIs', textAlign: TextAlign.center), ), Expanded( child: FittedBox( child: FlutterLogo(), ), ),  
            ],  
          ),  
  
          Row(  
              children: [  
                TextButton(onPressed: (){}, child: Text("Text Button"),),  
                ElevatedButton(onPressed: (){}, child: Text("Elevated Button")),  
                OutlinedButton(onPressed: (){}, child: Text("Outline Button"))  
              ]  
  
          ),  
          Row(  
            children: [ Expanded( child: Text('Deliver features faster', textAlign: TextAlign.center), ), Expanded( child: Text('Craft beautiful UIs', textAlign: TextAlign.center), ), Expanded( child: FittedBox( child: FlutterLogo(), ), ),  
            ],  
          ),  
          Row(  
            children: [ Expanded( child: Text('Last Deliver features faster', textAlign: TextAlign.center), ), Expanded( child: Text('Craft beautiful UIs', textAlign: TextAlign.center), ), Expanded( child: FittedBox( child: FlutterLogo(), ), ),  
            ],  
          ),  
        ],  
      ),  
    ),]  
)


``` 
##### example-2
```dart
Container(  
  height: 300,  
  margin: EdgeInsets.only(top: 20),  
  child:  
  ListView(  
    shrinkWrap: true,  
    //reverse: true,  
  
    scrollDirection: Axis.vertical,  
    children: [  
      Row(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
        children: [  
          Column(  
            crossAxisAlignment: CrossAxisAlignment.center,  
            children: [  
              Text("1 data"),  
              Text("3 data"),  
              Text("4 data"),  
            ],  
  
          ),  
          Column(  
            crossAxisAlignment: CrossAxisAlignment.center,  
            children: [  
              Text("1 data"),  
              Text("3 data"),  
              Text("4 data"),  
            ],  
          ),  
          Column(  
            crossAxisAlignment: CrossAxisAlignment.center,  
            children: [  
              Text("1 data"),  
              Text("3 data"),  
              Text("4 data"),  
            ],  
          ),  
          Column(  
            crossAxisAlignment: CrossAxisAlignment.center,  
            children: [  
              Text("1 data"),  
              Text("3 data"),  
              Text("4 data"),  
            ],  
          ),  
  
        ],  
      ),  
      Row(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
  
        children: [  
          Expanded(child:Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'First Name',),)),),  
          Expanded(child:Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Last Name',),)),),  
        ],  
      ),  
      Column(  
        mainAxisAlignment: MainAxisAlignment.start,  
        children: [  
          Row(  
            crossAxisAlignment: CrossAxisAlignment.start,  
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
            children: [  
              Expanded(child:Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'First Name',),)),),  
            ],  
          ),  
          Row(  
            crossAxisAlignment: CrossAxisAlignment.start,  
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
            children: [  
              Expanded(child:Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'First Name',),)),),  
            ],  
          ),  
          Row(  
            crossAxisAlignment: CrossAxisAlignment.start,  
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
            children: [  
              Expanded(child:Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'First Name',),)),),  
            ],  
          ),  
        ],  
      ),  
      Expanded(  
        flex: 1,  
        child: TextButton(  
          onPressed: () {  
            mySnackBar("Text Button Click", context);  
            myAlertDialog(context);  
          },  
          child: Text("Text Button First"),  
          style: buttonStyle,  
        ),  
      ),  
      Expanded(  
          child: TextButton(  
            onPressed: () {},  
            child: Text("Text Button"),  
          )),  
      Expanded(  
          child: TextButton(  
            onPressed: () {},  
            child: Text("Text Button"),  
          )),  
      Expanded(  
          child: TextField(  
            decoration: InputDecoration(  
              border: OutlineInputBorder(),  
              hintText: 'Enter a search term',  
            ),  
          ),  
      ),  
      Expanded(  
          child: TextButton(  
            onPressed: () {},  
            child: Text("Text Button"),  
          )),  
      Expanded(  
          child: TextButton(  
            onPressed: () {},  
            child: Text("Text Button"),  
          )),  
      Expanded(  
          child: TextButton(  
            onPressed: () {},  
            child: Text("Text Button"),  
          )),  
      Expanded(  
          child: TextButton(  
            onPressed: () {},  
            child: Text("Text Button"),  
          )),  
      Expanded(  
          child: TextButton(  
            onPressed: () {},  
            child: Text("Text Button"),  
          )),  
      Expanded(  
          child: TextButton(  
            onPressed: () {},  
            child: Text("Text Button Last"),  
          )),  
    ],  
  
  ),  
),
```
#### List View Horizontal
##### Example-1
#ListViewhorizontal
```dart
ListView(  
  shrinkWrap: true,  
  //reverse: true,  
  
  scrollDirection: Axis.horizontal,  
  children: [  
    Expanded(  
      flex: 1,  
      child: TextButton(  
        onPressed: () {  
          mySnackBar("Text Button Click", context);  
          myAlertDialog(context);  
        },  
        child: Text("Text Button First"),  
        style: buttonStyle,  
      ),  
    ),  
    Expanded(  
        child: TextButton(  
      onPressed: () {},  
      child: Text("Text Button"),  
    )),  
    Expanded(  
        child: TextButton(  
      onPressed: () {},  
      child: Text("Text Button"),  
    )),  
    Expanded(  
        child: TextButton(  
      onPressed: () {},  
      child: Text("Text Button"),  
    )),  
    Expanded(  
        child: TextButton(  
      onPressed: () {},  
      child: Text("Text Button"),  
    )),  
    Expanded(  
        child: TextButton(  
      onPressed: () {},  
      child: Text("Text Button"),  
    )),  
    Expanded(  
        child: TextButton(  
      onPressed: () {},  
      child: Text("Text Button"),  
    )),  
    Expanded(  
        child: TextButton(  
      onPressed: () {},  
      child: Text("Text Button"),  
    )),  
    Expanded(  
        child: TextButton(  
      onPressed: () {},  
      child: Text("Text Button"),  
    )),  
    Expanded(  
        child: TextButton(  
      onPressed: () {},  
      child: Text("Text Button Last"),  
    )),  
  ],  

```
##### Example-2
```dart
Container(  
  height: 50,  
  margin: EdgeInsets.only(top: 20),  
  child:  
  ListView(  
    shrinkWrap: true,  
    //reverse: true,  
  
    scrollDirection: Axis.horizontal,  
    children: [  
      Expanded(  
        flex: 1,  
        child: TextButton(  
          onPressed: () {  
            mySnackBar("Text Button Click", context);  
            myAlertDialog(context);  
          },  
          child: Text("Text Button First"),  
          style: buttonStyle,  
        ),  
      ),  
      Expanded(  
          child: TextButton(  
            onPressed: () {},  
            child: Text("Text Button"),  
          )),  
      Expanded(  
          child: TextButton(  
            onPressed: () {},  
            child: Text("Text Button"),  
          )),  
      Expanded(  
          child: TextButton(  
            onPressed: () {},  
            child: Text("Text Button"),  
          )),  
      Expanded(  
          child: TextButton(  
            onPressed: () {},  
            child: Text("Text Button"),  
          )),  
      Expanded(  
          child: TextButton(  
            onPressed: () {},  
            child: Text("Text Button"),  
          )),  
      Expanded(  
          child: TextButton(  
            onPressed: () {},  
            child: Text("Text Button"),  
          )),  
      Expanded(  
          child: TextButton(  
            onPressed: () {},  
            child: Text("Text Button"),  
          )),  
      Expanded(  
          child: TextButton(  
            onPressed: () {},  
            child: Text("Text Button"),  
          )),  
      Expanded(  
          child: TextButton(  
            onPressed: () {},  
            child: Text("Text Button Last"),  
          )),  
    ],  
  
    ),  
),
```
### Specialized scrollable widgets 
#DraggableScrollableSheet
```dart
DraggableScrollableSheet(  
  initialChildSize: 0.4,  
  minChildSize: 0.2,  
  maxChildSize: 0.6,  
  builder: (context, scrollController){  
    return SingleChildScrollView(  
      controller: scrollController,  
      child: Container(  
  
            alignment: Alignment.topCenter,  
            margin: EdgeInsets.all(0),  
            padding: EdgeInsets.all(40),  
            decoration: BoxDecoration(  
                color: Colors.blue,  
                border: Border.all(color: Colors.white, width: 5)  
            ),  
            child: Column(  
  
  
              children: [  
  
                Row(  
                  children: [ Expanded( child: Text('Deliver features faster', textAlign: TextAlign.center), ), Expanded( child: Text('Craft beautiful UIs', textAlign: TextAlign.center), ), Expanded( child: FittedBox( child: FlutterLogo(), ), ),  
                  ],  
                ),  
  
                Row(  
                    children: [  
                      TextButton(onPressed: (){}, child: Text("Text Button"),),  
                      ElevatedButton(onPressed: (){}, child: Text("Elevated Button")),  
                      OutlinedButton(onPressed: (){}, child: Text("Outline Button"))  
                    ]  
  
                ),  
                Row(  
                  children: [ Expanded( child: Text('Deliver features faster', textAlign: TextAlign.center), ), Expanded( child: Text('Craft beautiful UIs', textAlign: TextAlign.center), ), Expanded( child: FittedBox( child: FlutterLogo(), ), ),  
                  ],  
                ),  
                Row(  
                  children: [ Expanded( child: Text('Last Deliver features faster', textAlign: TextAlign.center), ), Expanded( child: Text('Craft beautiful UIs', textAlign: TextAlign.center), ), Expanded( child: FittedBox( child: FlutterLogo(), ), ),  
                  ],  
                ),  
              ],  
            ),  
          ),  
      );  
  
  },  
)
```
### ListWheelScrollView
```dart
Container(child:  
ListWheelScrollView(  
  useMagnifier: true,  
  magnification: 0.85,  
  itemExtent: 200,  
  overAndUnderCenterOpacity: 0.2,  
  
  children: [  
    Row(  
      children: [ Expanded( child: Text('Deliver features faster', textAlign: TextAlign.center), ), Expanded( child: Text('Craft beautiful UIs', textAlign: TextAlign.center), ), Expanded( child: FittedBox( child: FlutterLogo(), ), ),  
      ],  
    ),  
  
    Row(  
        children: [  
          TextButton(onPressed: (){}, child: Text("Text Button"),),  
          ElevatedButton(onPressed: (){}, child: Text("Elevated Button")),  
          OutlinedButton(onPressed: (){}, child: Text("Outline Button"))  
        ]  
  
    ),  
    Row(  
      children: [ Expanded( child: Text('Deliver features faster', textAlign: TextAlign.center), ), Expanded( child: Text('Craft beautiful UIs', textAlign: TextAlign.center), ), Expanded( child: FittedBox( child: FlutterLogo(), ), ),  
      ],  
    ),  
    Row(  
      children: [ Expanded( child: Text('Last Deliver features faster', textAlign: TextAlign.center), ), Expanded( child: Text('Craft beautiful UIs', textAlign: TextAlign.center), ), Expanded( child: FittedBox( child: FlutterLogo(), ), ),  
      ],  
    ),  
  ],  
),),
```
### Fancy scrolling | Nested scrolling widgets
```dart
CustomScrollView(  
  slivers: <Widget>[  
    const SliverAppBar(  
      pinned: true,  
      expandedHeight: 250.0,  
      flexibleSpace: FlexibleSpaceBar(  
        title: Text('Demo'),  
      ),  
    ),  
    SliverGrid(  
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(  
        maxCrossAxisExtent: 200.0,  
        mainAxisSpacing: 10.0,  
        crossAxisSpacing: 10.0,  
        childAspectRatio: 4.0,  
      ),  
      delegate: SliverChildBuilderDelegate(  
            (BuildContext context, int index) {  
          return Container(  
            alignment: Alignment.center,  
            color: Colors.teal[100 * (index % 9)],  
            child: Text('Grid Item $index'),  
          );  
        },  
        childCount: 20,  
      ),  
    ),  
    SliverFixedExtentList(  
      itemExtent: 50.0,  
      delegate: SliverChildBuilderDelegate(  
            (BuildContext context, int index) {  
          return Container(  
            alignment: Alignment.center,  
            color: Colors.lightBlue[100 * (index % 9)],  
            child: Text('List Item $index'),  
          );  
        },  
      ),  
    ),  
  ],  
)
```
### Alert Dailog
```dart
myAlertDialog(context){  
  return showDialog(  
      context: context,  
      builder: (BuildContext Context){  
        return Expanded(  
          child: AlertDialog(  
            title:  Text("Alert !"),  
            content: Text("Do you want to Delete"),  
            actions: [  
              TextButton(onPressed: (){Navigator.of(context).pop(); mySnackBar("Delete Success", context);}, child: Text("yes")),  
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No"))  
            ],  
          ),  
        );  
      }  
  );  
}
```


### Body Scroll Vertical UI 
#### example-1 Body
```dart
body: ListView(  
    
      children: [  
        Container(  
          height: 50,  
          margin: EdgeInsets.only(top: 20),  
          child:  
          ListView(  
            shrinkWrap: true,  
            //reverse: true,  
  
            scrollDirection: Axis.horizontal,  
            children: [  
              Expanded(  
                flex: 1,  
                child: TextButton(  
                  onPressed: () {  
                    mySnackBar("Text Button Click", context);  
                    myAlertDialog(context);  
                  },  
                  child: Text("Text Button First"),  
                  style: buttonStyle,  
                ),  
              ),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button Last"),  
                  )),  
            ],  
  
            ),  
        ),  
        Container(  
          height: 300,  
          margin: EdgeInsets.only(top: 20),  
          child:  
          ListView(  
            shrinkWrap: true,  
            //reverse: true,  
  
            scrollDirection: Axis.vertical,  
            children: [  
              Row(  
                crossAxisAlignment: CrossAxisAlignment.start,  
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
                children: [  
                  Column(  
                    crossAxisAlignment: CrossAxisAlignment.center,  
                    children: [  
                      Text("1 data"),  
                      Text("3 data"),  
                      Text("4 data"),  
                    ],  
  
                  ),  
                  Column(  
                    crossAxisAlignment: CrossAxisAlignment.center,  
                    children: [  
                      Text("1 data"),  
                      Text("3 data"),  
                      Text("4 data"),  
                    ],  
                  ),  
                  Column(  
                    crossAxisAlignment: CrossAxisAlignment.center,  
                    children: [  
                      Text("1 data"),  
                      Text("3 data"),  
                      Text("4 data"),  
                    ],  
                  ),  
                  Column(  
                    crossAxisAlignment: CrossAxisAlignment.center,  
                    children: [  
                      Text("1 data"),  
                      Text("3 data"),  
                      Text("4 data"),  
                    ],  
                  ),  
  
                ],  
              ),  
              Row(  
                crossAxisAlignment: CrossAxisAlignment.start,  
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
  
                children: [  
                  Expanded(child:Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'First Name',),)),),  
                  Expanded(child:Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Last Name',),)),),  
                ],  
              ),  
              Column(  
                mainAxisAlignment: MainAxisAlignment.start,  
                children: [  
                  Row(  
                    crossAxisAlignment: CrossAxisAlignment.start,  
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
                    children: [  
                      Expanded(child:Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'First Name',),)),),  
                    ],  
                  ),  
                  Row(  
                    crossAxisAlignment: CrossAxisAlignment.start,  
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
                    children: [  
                      Expanded(child:Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'First Name',),)),),  
                    ],  
                  ),  
                  Row(  
                    crossAxisAlignment: CrossAxisAlignment.start,  
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
                    children: [  
                      Expanded(child:Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'First Name',),)),),  
                    ],  
                  ),  
                ],  
              ),  
              Expanded(  
                flex: 1,  
                child: TextButton(  
                  onPressed: () {  
                    mySnackBar("Text Button Click", context);  
                    myAlertDialog(context);  
                  },  
                  child: Text("Text Button First"),  
                  style: buttonStyle,  
                ),  
              ),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      hintText: 'Enter a search term',  
                    ),  
                  ),  
              ),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button"),  
                  )),  
              Expanded(  
                  child: TextButton(  
                    onPressed: () {},  
                    child: Text("Text Button Last"),  
                  )),  
            ],  
  
          ),  
        ),  
      ],  
  
),****
```