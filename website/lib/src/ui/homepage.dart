import 'package:flutter/material.dart';
import 'package:website/src/config/homePageConfig.dart';
import 'package:website/src/helper/responsiveWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: getLargeScreen(),
      smallScreen: getSmallScreen(),
    );
  }

  getLargeScreen() {
    return Scaffold(
      // TODO: Increase AppBar Height
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        leading: getImage(),
        elevation: 0,

        actions: <Widget>[
          // Use different Widget?
          // SizedBox(
          //   width: MediaQuery.of(context).size.width * 0.04,
          // ),
          Container(
            width: MediaQuery.of(context).size.width * 0.20,
          ),
          getHeaderText(navItemAbout),
          // SizedBox(
          //   width: MediaQuery.of(context).size.width * 0.01,
          // ),
          getHeaderText(navItemEvent),
          // SizedBox(
          //   width: MediaQuery.of(context).size.width * 0.01,
          // ),
          getHeaderText(navItemContact),
          // SizedBox(
          //   width: MediaQuery.of(context).size.width * 0.01,
          // ),
          getHeaderText(navItemJoin),
        ],
      ),
      body: getBody(),
    );
  }

  getSmallScreen() {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue[800],
        leading: getImage(),
      ),
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              getHeaderListTile(navItemAbout),
              Divider(
                thickness: 2,
              ),
              getHeaderListTile(navItemEvent),
              Divider(
                thickness: 2,
              ),
              getHeaderListTile(navItemContact),
              Divider(
                thickness: 2,
              ),
              getHeaderListTile(navItemJoin),
            ],
          ),
        ),
      ),
      body: getBody(),
    );
  }

  appBarTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: 24,

      );
  }

  getImage() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Image.asset(
          "assets/images/logo.png",
          // TODO: Increase Height.
          height: 24,),
    );
  }

  getHeaderText(String navTitle, [var function]) {
    //TODO: Use different widget
    return Expanded(
      child: getHeaderListTile(navTitle, function),
    );
  }

  getHeaderListTile(String navTitle, [var function]) {
    return ListTile(
      onTap: function ??
          () {
            print("Pressed");
          },
      title: Text(
        navTitle,
        style: appBarTextStyle(),
      ),
    );
  }

  getBody() {
    return Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset("assets/images/background.jpg",
                      fit: BoxFit.cover,
                      alignment: Alignment.center,),
                      Container(
                        color: Color.fromRGBO(0, 105, 233, 0.8),
                      )
                    ],
                  ),
                  )
                ],)
            ],
          );
  }
}
