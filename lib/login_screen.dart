import 'package:flutter/material.dart';
import 'package:project_buoi_13/screen.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _userName;
  late TextEditingController _passWord;

  @override
  void initState() {
    super.initState();
    _userName = TextEditingController();
    _passWord = TextEditingController();
  }

  void check() {
    if (_userName.text == "hoangan" && _passWord.text == "12345") {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Dang nhap thanh cong"),
      ));
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => List_view() )
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Sai tk hoac mk"),
      ));
    }
  }

  @override
  void dispose() {
    _userName.dispose();
    _passWord.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              children: [
                Container(
                  height: 140,
                  width: 280,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 37),
                  decoration: BoxDecoration(
                    color: Color(0xfff9e3aec),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "MobiPay",
                    style: TextStyle(fontStyle: FontStyle.normal, fontSize: 45, color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 35),
                  child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Login", style: TextStyle(color: Color(0xfff9e3aec), fontSize: 35,  ),),]
                  ),
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Please sign in to continue", style: TextStyle(color: Color(0xfff9e3aec), fontSize: 15),)],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 5),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Email", style: TextStyle(color: Color(0xfff9e3aec)),),
                    ],
                  ),
                ),
                TextFormField(
                  controller: _userName,
                  onTapOutside: ((even){ FocusScope.of(context).unfocus();}),
                  validator: (value){
                    if(value != "hoangan" || value == null){
                      return "Vui long nhap lai";
                    }
                    return null;
                  },
                  style: TextStyle(fontSize: 10),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 5),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Password", style: TextStyle(color: Color(0xfff9e3aec)),),
                    ],
                  ),
                ),
                TextFormField(
                  controller: _passWord,
                  validator: (value){
                    if(value != "12345"){
                      return "Vui long nhap lai";
                    }
                    return null;
                  },
                  style: TextStyle(fontSize: 10),
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {});
                          // check();
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Dang nhap thanh cong')),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Color(0xfff9e3aec)),
                        child: Container(
                          child: const Text("Log in", style: TextStyle(color: Colors.white, fontSize: 20), ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot password?", style: TextStyle(fontSize: 10),),
                    Text(
                      " Click here",
                      style: TextStyle(color: Color(0xfff9e3aec), fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}