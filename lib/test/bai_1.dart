import 'package:flutter/material.dart';

class Bai1ScreenLogin extends StatefulWidget {
  const Bai1ScreenLogin({super.key});

  @override
  State<Bai1ScreenLogin> createState() => _Bai1ScreenLoginState();
}

class _Bai1ScreenLoginState extends State<Bai1ScreenLogin> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  late int counting = 0;

  @override
  void initState() {
    // TODO: implement initState
    counting;
    _email;
    _password;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    counting;
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bai 1 dang nhap",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          if (_email.text == "hoangan" && _password.text == "13102003") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Screen2()),
            );
          } else {
            counting += 1;
            if (counting == 3) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Ban da nhap sai 3 lan")));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Vui long nhap lai")));
            }
          }
        },
        child: Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blueAccent,
          ),
          child: const Icon(
            Icons.arrow_right,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                controller: _email,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: Colors.blueAccent,
                    ),
                  ),
                  hintText: "Email",
                ),
                onTapOutside: ((even) {
                  FocusScope.of(context).unfocus();
                }),
              ),
              const SizedBox(
                height: 20,
                width: double.infinity,
              ),
              TextFormField(
                controller: _password,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password_sharp),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: Colors.blueAccent,
                    ),
                  ),
                  hintText: "Password",
                ),
                onTapOutside: ((even) {
                  FocusScope.of(context).unfocus();
                }),
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Screen 2",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: const Center(
        child: Text(
          "Welcome Hoang An",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
