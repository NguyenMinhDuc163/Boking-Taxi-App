import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icar/src/resources/ride_picker_page.dart';
import 'package:icar/values/app_assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Stack(
          children: [
            // GoogleMap

            Positioned(
              left: 0, top: 0, right: 0,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    title: Text(
                      "Taxi App",
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: TextButton(
                      onPressed: () {
                        print("click menu");
                      },
                      child: Image.asset(AppAssets.icMenu),
                    ),
                    actions: <Widget>[
                      IconButton( // ???? bug
                        onPressed: () {
                          // Xử lý khi nút thông báo được nhấn
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RidePickerPage()));
                        },
                        icon: Image.asset(AppAssets.icMenuNotify),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: null, // RidePicker
                      )
                    ],
                  ),
                  Positioned(
                    left: 20, right: 20, bottom: 40,
                    height: 248,
                    child: Container(), // CarPickup
                  )
                ],
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: null,
      ),
    );
  }
}
