# animated_dialog_box

A pure dart package for showing animated alert box.
![Alt Text](https://github.com/Shubham-Narkhede/animated_dialog_box/blob/master/animated_box_example/animated_alert_box.gif)
## Getting Started
MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            color: Colors.white,
            child: Text('Simple Pop Up'),
            onPressed: () async {
              await animated_dialog_box.showCustomAlertBox(
                  context: context,
                  firstButton: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    color: Colors.white,
                    child: Text('Ok'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  yourWidget: Container(
                    child: Text('This is my first package'),
                  ));
            },
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            color: Colors.white,
            child: Text('Scale Alert Dialog'),
            onPressed: () async {
              await animated_dialog_box.showScaleAlertBox(
                  title:Center(child: Text("Hello")) , // IF YOU WANT TO ADD
                  context: context,
                  firstButton: MaterialButton(
                    // FIRST BUTTON IS REQUIRED
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    color: Colors.white,
                    child: Text('Ok'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  secondButton: MaterialButton(
                    // OPTIONAL BUTTON
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    color: Colors.white,
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  icon: Icon(Icons.info_outline,color: Colors.red,), // IF YOU WANT TO ADD ICON
                  yourWidget: Container(
                    child: Text('This is my first package'),
                  ));
            },
          ),
