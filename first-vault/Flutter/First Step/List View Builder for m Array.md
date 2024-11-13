## Create Steps
- JSON Array
- List View Builder
- Gesture Detector
- List Item
- List Item On Tap/ On Press

#example-1 
```dart
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
```

## Grid View Builder for m Array


