import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginForm();
}
class _LoginForm extends State<LoginForm> {
  // GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;

  void validateAndSave() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      print('Form is valid');
    } else {
      print('Form is invalid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      child: Form(
        key: _formKey,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 150.0,
            ),
            // input field for email
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) =>
              value!.isEmpty ? 'Email cannot be blank' : null,
              // onSaved: (value) => _email = value,
            ),
            // input field for password
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              validator: (value) =>
              value!.isEmpty ? 'Password cannot be blank' : null,
              // onSaved: (value) => _password = value,
            ),
            InkWell(
              child: Text(
                'Login',
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: validateAndSave,
            ),
          ],
        ),
      ),
    );
  }
}