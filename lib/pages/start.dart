import 'package:flutter/material.dart';
import 'package:shopping/pages/login.dart';

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Center(
            child: Container(
              width: 150,
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 150,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("The store of your",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              )),
          Text("dreams. You will find",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              )),
          Text(
            "here what you need",
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.pink,
              shadowColor: Colors.greenAccent,
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              minimumSize: const Size(200, 40),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: const Text(
              'Start Shopping',
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Don't have an account",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Sign in here",
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
