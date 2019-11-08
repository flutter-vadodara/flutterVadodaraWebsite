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
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: getImage(),
        elevation: 1,
        actions: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          getHeaderText(homePageTitle),
          Container(
            width: MediaQuery.of(context).size.width * 0.20,
          ),
          getHeaderText(navItemAbout),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.01,
          ),
          getHeaderText(navItemEvent),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.01,
          ),
          getHeaderText(navItemContact),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.01,
          ),
          getHeaderText(navItemJoin),
        ],
      ),
    );
  }

  getSmallScreen() {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        leading: getImage(),
        title: Text(
          homePageTitle,
          style: appBarTextStyle(),
        ),
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
    );
  }

  appBarTextStyle() {
    return TextStyle(color: Colors.blueAccent);
  }

  getImage() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Image.network(
          "https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png"),
    );
  }

  getHeaderText(String navTitle, [var function]) {
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
}
