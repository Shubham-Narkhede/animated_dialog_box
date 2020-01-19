library animated_dialog_box;

import 'package:flutter/material.dart';

class animated_dialog_box {
  static Future showCustomAlertBox({
    @required BuildContext context,
    @required Widget yourWidget,
  }) {
    assert(context != null, "context is null!!");
    assert(yourWidget != null, "yourWidget is null!!");
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                yourWidget,
                MaterialButton(
                  color: Colors.white30,
                  child: Text('Ok'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            elevation: 10,
          );
        });
  }

  static Future showScaleAlertBox({
    @required BuildContext context,
    @required Widget yourWidget,
    Widget title,
  }) {
    assert(context != null, "context is null!!");
    assert(yourWidget != null, "yourWidget is null!!");
    return showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          return Transform.scale(
            scale: a1.value,
            child: Opacity(
              opacity: a1.value,
              child: AlertDialog(
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0)),
                title: title,
                content: yourWidget,
                actions: <Widget>[],
              ),
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 200),
        barrierDismissible: true,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {});

    // return showDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.all(Radius.circular(15)),
    //         ),
    //         content: Column(
    //           mainAxisSize: MainAxisSize.min,
    //           children: <Widget>[
    //             yourWidget,
    //             MaterialButton(
    //               color: Colors.white30,
    //               child: Text('close alert'),
    //               onPressed: () {
    //                 Navigator.of(context).pop();
    //               },
    //             )
    //           ],
    //         ),
    //         elevation: 10,
    //       );
    //     });
  }
}
