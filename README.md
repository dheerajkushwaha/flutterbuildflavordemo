# Flutter build flavor (Android)

When developing a Flutter app, you may want to share it with internal testers in a development environment, using a version of the app with a backend configured for development rather than production. This version of the app is called the dev variant.
When you’re ready to release the app publicly and have the production backend set up, you’ll need another version of the app, called the prod flavor, which is connected to the production backend.
Flavors allow you to create separate environments,theme , style  for your app using the same code base. You can use flavors to set up both app versions without writing two separate apps.

# Add Dependency :

Add Dependency to your pubspec.yaml file (Please check on google about these dependency if you are not aware) :-
```
  flutter_riverpod: ^2.3.2
  flutter_launcher_icons: ^0.12.0

```

> Create FlavorConfig.dart file .
> Change main.dart class to mainCommon.dard flie
> Add main_dev.dart and main_prod.dart file and add url , theme , title according to your requirement you can add more flavor as requirement here i have added only for dev and prod
[main_dev.dart](lib%2Fmain_dev.dart)
[main_prod.dart](lib%2Fmain_prod.dart)

#Add flavor in android build.gradle file

> Go to build.gradle inside android application add flavor below to defaultConfig  -
```
  flavorDimensions "app"
    productFlavors{
        prod {
            dimension="app"
            applicationId="com.example.buildflavordemo.prod"
            versionCode 1
            versionName "1.0"
        }
        dev {
            dimension="app"
            applicationId="com.example.buildflavordemo.dev"
            versionCode 1
            versionName "1.0"
        }
    }

```
change applcation id like com.example.buildflavordemo.prod - com.example.buildflavordemo is main applicationId and added .prod for production build.

Configuration step :-

Go to edit configuration click on + icon add
Name (prod),
Dart entry point select main_prod path which we have created initially (E:\flutter_workspace\buildflavordemo\lib\main_prod.dart).
Additional run args -- flavor prod

relpate same Configuration step :- for another flavor like dev ,qa , etc

now select any flavor and run

#Change Application name according to flavor :-
Create folder inside android application for each flavor ( prod,dev )
create values folder inside each flavor (prod,dev ) than create files strings.xml

```
prod- 
    ->values 
     -> strings 
    <?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">Prod</string>
</resources>

```
```
dev- 
    ->values 
     -> strings 
    <?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">Dev</string>
</resources>
```
reference :-
[strings.xml](android%2Fapp%2Fsrc%2Fprod%2Fres%2Fvalues%2Fstrings.xml)
[strings.xml](android%2Fapp%2Fsrc%2Fdev%2Fres%2Fvalues%2Fstrings.xml)

change app_name in androidManifest.xm file - android:label="@string/app_name"

#Add Launcher icon for flavor :

Add file in main project

[flutter_launcher_icons-prod.yaml](flutter_launcher_icons-prod.yaml)
[flutter_launcher_icons-prod.yaml](flutter_launcher_icons-dev.yaml)

add image in assets folder and add entry pubspec.yaml
```
  assets:
    - assets/app_icons/
    - assets/images/
```
After adding images run below command in terminal

Generate the icons with $ flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons*

This will generare all size of launch icon for all Floavor
Example :-
[res](android%2Fapp%2Fsrc%2Fprod%2Fres)
 


