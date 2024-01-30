import 'package:flutter/material.dart';

class LoadingDialog{
  static void showLoadingDialog(BuildContext context, String msg){
    showDialog( // ham co san
      context: context,
      barrierDismissible: false, // co cho nguoi dung an vao ben ngoai de tat khonng
      builder: (context) => new Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          color: Color(0xffffffff),
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(), //xoay xoay
              Padding(
                padding: EdgeInsets.fromLTRB(0,  10, 0, 0),
                child: Text(
                  msg, style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static hideLoadingDialog(BuildContext context){
    Navigator.of(context).pop(LoadingDialog); // thoat khoi man hinh khi nguoi dung an
  }
}