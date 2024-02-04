import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:icar/src/resources/ride_picker_page.dart';
import 'package:icar/src/resources/widgets/home_menu.dart';
import 'package:icar/src/resources/widgets/ride_picker.dart';
import 'package:icar/values/app_assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Stack(
          children: [
            // GoogleMap
            GoogleMap(initialCameraPosition: CameraPosition(
                target: LatLng(10.7915178, 106.7271422),
            zoom: 14.4746)),
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
                        _scaffoldKey.currentState?.openDrawer();
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
                        child: RidePicker(), // RidePicker
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
        child: HomeMenu(),
      ),
    );
  }
}
