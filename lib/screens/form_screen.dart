import 'package:MyApp/widget/textfield_widget.dart';
import 'package:flutter/material.dart';

class FormExample extends StatefulWidget {
  FormExample({Key key}) : super(key: key);
  @override
  _FormExampleState createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final node = FocusScope.of(context);
    return GestureDetector(
      onTap: () {
        node.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text('Form Example'),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: height * 0.02),
              TextfieldWidget(
                hintText: 'Enter full name',
                correct: true,
                focus: true,
                keyboard: TextInputType.text,
                labelText: 'Full Name',
                onInputValueChange: () {
                  //Read the input change
                },
                validators: (String txt) {
                  print(txt);
                },
                onEditCompletion: () {
                  //On done keyboard press
                  node.nextFocus();
                },
              ),
              SizedBox(height: height * 0.02),
              TextfieldWidget(
                hintText: 'Enter mobile number',
                correct: true,
                keyboard: TextInputType.phone,
                labelText: 'Phone',
                onInputValueChange: () {},
                validators: (String txt) {
                  //On validation throw some error
                  print(txt);
                },
              ),
              SizedBox(height: height * 0.02),
              TextfieldWidget(
                hintText: 'Enter email',
                correct: true,
                keyboard: TextInputType.emailAddress,
                labelText: 'Email',
                onInputValueChange: () {},
                validators: (String txt) {
                  print(txt);
                },
                onEditCompletion: () {
                  node.nextFocus();
                  print('Make API calls');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
