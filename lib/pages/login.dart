import 'package:flutter/material.dart';
import 'package:shopping/pages/shop.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Center(child: Text("Sign In")),
        backgroundColor: Colors.pink,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              children: [
                const SizedBox(height: 60),
                Container(
                  width: 350,
                  child: const TextField(
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFFbdc6cf),
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 122, color: Colors.green),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      hintText: ' Enter Email',
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                  ),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFED2339),
                        spreadRadius: -15,
                        blurRadius: 15,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 350,
                  child: const TextField(
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFFbdc6cf),
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      hintText: ' Enter Password',
                      contentPadding: EdgeInsets.all(20.0),
                    ),
                  ),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFED2339),
                        spreadRadius: -15,
                        blurRadius: 15,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text("Register"),
                    const SizedBox(
                      width: 110,
                    ),
                    Text("Forget Password?")
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink,
                    onPrimary: Colors.white,
                    shadowColor: Colors.greenAccent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    minimumSize: const Size(200, 40),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Shop()));
                  },
                  child: const Text('Sign Up',
                      style: TextStyle(
                        fontSize: 18.0,
                      )),
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Text("Do you have an account?"),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Create Account",
                      style: TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.w900),
                    )
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
