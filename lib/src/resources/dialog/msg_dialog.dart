import 'package:flutter/material.dart';

class MsgDiaLog{
  static void showMsgDialog(BuildContext context, String title, String msg){
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(msg),
        actions: [
          ElevatedButton(
            onPressed: (){
              Navigator.of(context).pop(MsgDiaLog);
            },
            child: Text("OK"),
          )
        ],
      )
    );
  }
}