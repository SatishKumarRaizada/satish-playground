import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextfieldWidget extends StatefulWidget {
  const TextfieldWidget({
    Key key,
    this.correct = false,
    this.hintText = '',
    this.onInputValueChange,
    this.focus = false,
    this.validators,
    this.secure = false,
    this.controller,
    this.labelText = '',
    this.keyboard = TextInputType.text,
    this.onEditCompletion,
  }) : super(key: key);

  final bool correct;
  final String hintText;
  final String labelText;
  final Function validators;
  final bool secure;
  final Function onInputValueChange;
  final Function onEditCompletion;
  final bool focus;
  final TextEditingController controller;
  final TextInputType keyboard;

  @override
  _TextfieldWidgetState createState() => _TextfieldWidgetState();
}

class _TextfieldWidgetState extends State<TextfieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: MediaQuery.of(context).size.width * 0.92,
      child: TextFormField(
        obscureText: widget.secure,
        keyboardType: widget.keyboard,
        autofocus: widget.focus,
        controller: widget.controller,
        onChanged: (value) {
          widget.onInputValueChange(value);
        },
        onEditingComplete: () {
          widget.onEditCompletion();
        },
        cursorColor: Colors.pink,
        decoration: InputDecoration(
          counterText: '',
          errorStyle: TextStyle(
            fontSize: 16,
          ),
          hintText: widget.hintText,
          labelText: widget.labelText,
          labelStyle: TextStyle(fontSize: 18),
          hintStyle: TextStyle(fontSize: 16),
        ),
        validator: (value) {
          return widget.validators(value);
        },
      ),
    );
  }
}
