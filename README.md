# flutterVadodaraWebsite
Official website of Flutter Vadodara build in Flutter

You can find [wireframe](https://www.figma.com/file/IolMMmM7dzMGHjOXzrxMIY4w/Website?node-id=0%3A1) here to start contributing

# Guidelines
- Make use of ResponsiveWidget in order to make website responsive
- Extract Strings in specific config files
- Maintain the code modularity

# How to Run
Currently, you need either the master or dev channel of the Flutter SDK for web support<br>
To change the channel, run the following command:
```
flutter channel dev
```
Use the config command to enable web support:
```
flutter config --enable-web
```
Navigate to directory and run the following command:
```
flutter run -d chrome
```
