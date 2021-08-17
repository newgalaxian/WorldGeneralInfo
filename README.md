# world_general_info

World General Info is a Flutter application,which i developed while learning flutter.This app made me learn flutter thoroughly.

This is very simple app with all the basics of flutter.

![world_info_1](https://user-images.githubusercontent.com/12398746/129587832-569f5d13-2853-446c-ac3b-78ab7a66274d.jpg)
![world_info_2](https://user-images.githubusercontent.com/12398746/129588004-1e797092-d021-4af5-b2ce-df5e022fd652.jpg)
![world_info_3](https://user-images.githubusercontent.com/12398746/129588014-7b027e56-42a7-4391-88c9-d16e1b299475.jpg)
![world_info_4](https://user-images.githubusercontent.com/12398746/129588028-aa2f5036-49c7-45f6-ab0a-3ea2fe72c30e.jpg)
![world_info_5](https://user-images.githubusercontent.com/12398746/129588030-c1d69eb4-6044-4c6c-a014-df5e089313ba.jpg)

# Adding Splash Screen | Android launch screen

https://flutter.dev/docs/development/ui/advanced/splash-screen

display image as splash screen
```xml
   <?xml version="1.0" encoding="utf-8"?>
   <!-- Modify this file to customize your launch splash screen -->
   <layer-list xmlns:android="http://schemas.android.com/apk/res/android">
     <!-- <item android:drawable="@color/splash_color" />
    -->
       <!--  You can insert your own image assets here -->
       <item>
          <bitmap
               android:gravity="center"
               android:src="@drawable/splash" />
       </item>

   </layer-list>
```
# Remove the debug banner in flutter

https://www.arhamtechmind.com/remove-the-debug-banner-in-flutter/
 # add this line
  debugShowCheckedModeBanner: false, 
  
```dart
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'World General Info',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'World General Info'),
    );
  }
}
```
## Package used in pubspec.yaml
```dart
 country_provider: ^1.0.1
  hexcolor: ^2.0.3
  page_transition: ^1.1.7+6
  share: ^2.0.1
  url_launcher: ^6.0.3
  google_mobile_ads: ^0.12.1+1
```

