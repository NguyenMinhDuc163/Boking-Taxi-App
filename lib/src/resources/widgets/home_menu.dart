import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icar/values/app_assets.dart';
import 'package:icar/values/app_color.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Image.asset(AppAssets.icMenuUser),
          title: Text("My Profile", style: TextStyle(fontSize: 18, color: AppColors.primaryTextTwo)),
        ),
        ListTile(
          leading: Image.asset(AppAssets.icMenuHistory),
          title: Text("Ride History", style: TextStyle(fontSize: 18, color: AppColors.primaryTextTwo)),
        ),
        ListTile(
          leading: Image.asset(AppAssets.icMenuPercent),
          title: Text("Offer", style: TextStyle(fontSize: 18, color: AppColors.primaryTextTwo)),
        ),
        ListTile(
          leading: Image.asset(AppAssets.icMenuNotify),
          title: Text("Notifications", style: TextStyle(fontSize: 18, color: AppColors.primaryTextTwo)),
        ),
        ListTile(
          leading: Image.asset(AppAssets.icMenuHelp),
          title: Text("Help & Supports", style: TextStyle(fontSize: 18, color: AppColors.primaryTextTwo)),
        ),
        ListTile(
          leading: Image.asset(AppAssets.icMenuLogout),
          title: Text("Logout", style: TextStyle(fontSize: 18, color: AppColors.primaryTextTwo)),
        ),
      ],
    );
  }
}
