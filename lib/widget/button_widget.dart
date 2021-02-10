import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton({
    Key key,
    @required this.buttonText,
    this.onButtonPressed,
    this.width,
    this.disabled = false,
    this.colors = Colors.pink,
  }) : super(key: key);

  final String buttonText;
  final Function() onButtonPressed;
  final double width;
  final bool disabled;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: width * 0.92,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: FlatButton(
        color: colors,
        disabledColor: Colors.pinkAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        onPressed: !disabled
            ? () {
                onButtonPressed();
              }
            : null,
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
