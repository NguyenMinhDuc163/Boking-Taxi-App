import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icar/values/app_assets.dart';
import 'package:icar/values/app_color.dart';

class RidePickerPage extends StatefulWidget {
  const RidePickerPage({super.key});

  @override
  State<RidePickerPage> createState() => _RidePickerPageState();
}

class _RidePickerPageState extends State<RidePickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nguyen Duc"),),
      body: Container(
        constraints: BoxConstraints.expand(),
        color: AppColors.primaryWhite,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: double.infinity,
                height: 60,
                child: Stack(
                  alignment: AlignmentDirectional.centerStart,
                  children: [
                    SizedBox(
                      width: 40,
                      height: 60,
                      child: Center(
                        child: Image.asset(AppAssets.icLocationBlack),
                      ),
                    ),
                    Positioned(
                        right: 0, top: 0, width: 40, height: 60,
                        child: Center(
                          child: InkWell(
                            onTap: (){
                              print("nut duoc an");
                            },
                            child: Image.asset(AppAssets.icRemoveX),
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 50),
                      child: TextField(
                        textInputAction: TextInputAction.search,
                        onSubmitted: (str){
                          //search
                        },
                        style: TextStyle(fontSize: 16, color: AppColors.primaryTextTwo),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: ListView.separated(
                  shrinkWrap: true,
                itemBuilder: (context, index){},
                separatorBuilder: (context, index) => Divider(
                  height: 1,
                  color: AppColors.dividerColor,
                ),
                itemCount: 5,
              ),
            )
          ],
        ),
      ),

    );
  }
}
