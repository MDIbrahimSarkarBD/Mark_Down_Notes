## Google font add  [link](https://pub.dev/packages/google_fonts/install)
run this command: 
```cmd
flutter pub add google_fonts
```
### Import it

Now in your Dart code, you can use:

```dart
import 'package:google_fonts/google_fonts.dart';
```

[

apply text
#example-1 
```dart
Text("4 Column",  
  style: GoogleFonts.dancingScript(  
    textStyle: Theme.of(context).textTheme.displayLarge,  
    fontSize: 48,  
    fontWeight: FontWeight.w700,  
    // fontStyle: FontStyle.italic,  
  ),),
```
#example-2 
```dart
Text("4 Column font add",style: GoogleFonts.dancingScript(),
```
  


](https://pub.dev/packages/google_fonts/score)

#fontsCustom
```yaml
fonts:  
   - family: Lato  
     fonts:  
       - asset: fonts/Lato-Regular.ttf  
       - asset: fonts/Lato-Bold.ttf  
       - asset: fonts/Lato-Light.ttf  
         style: italic  
  
   - family: Poppins  
     fonts:  
       - asset: fonts/Poppins-Regular.ttf  
       - asset: fonts/Poppins-Bold.ttf  
       - asset: fonts/Poppins-Light.ttf  
         weight: 700

```