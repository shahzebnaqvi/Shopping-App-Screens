import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const TextField(
          style: TextStyle(fontSize: 12),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFFFFFFF),
            prefixIcon: Icon(Icons.search, color: Colors.pink),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            hintText: ' Search',
            contentPadding: EdgeInsets.all(0.0),
          ),
        ),
        backgroundColor: Colors.pink,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                productbox("assets/images/juice.png", "Juice"),
                productbox("assets/images/coffee.png", "Coffee"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                productbox("assets/images/burger.png", "Fast Food"),
                productbox("assets/images/more.png", "More"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.store_mall_directory,
              color: Colors.blueGrey,
              size: 30,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              color: Colors.blueGrey,
              size: 25,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
              color: Colors.blueGrey,
              size: 55,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.blueGrey,
              size: 25,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.grey,
              size: 25,
            ),
            label: '',
            backgroundColor: Colors.pink,
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}

Widget productbox(String img, name) {
  return Row(
    children: [
      SizedBox(
        height: 10,
        width: 5,
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(35.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset(
              img,
              width: 80,
            ),
            SizedBox(
              height: 10,
            ),
            Text(name),
          ],
        ),
      ),
      SizedBox(
        width: 2,
        height: 10,
      )
    ],
  );
}
