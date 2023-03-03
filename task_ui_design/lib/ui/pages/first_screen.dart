import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {

    final searchController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 8.0),
        child: ListView(
          children: [
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                  hintText: 'Looking for shoes',
                  hintStyle: TextStyle(
                      color: Color(0xFF707B81),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFFA7A7A7),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  contentPadding: EdgeInsets.all(8),
                  fillColor: Colors.white,
                  filled: true),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "images/nike.png",
                  height: 44,
                  width: 92,
                ),
                Image.asset(
                  "images/puma.png",
                  height: 44,
                  width: 44,
                ),
                Image.asset(
                  "images/under_armour.png",
                  height: 44,
                  width: 44,
                ),
                Image.asset(
                  "images/adidas.png",
                  height: 44,
                  width: 44,
                ),
                Image.asset(
                  "images/converse.png",
                  height: 44,
                  width: 44,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Shoes",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff1A2530)),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xff5B9EE1)),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 207,
                    width: 157,
                    child: Image.asset(
                      "images/shoe1.png",
                    )),
                SizedBox(
                    height: 207,
                    width: 157,
                    child: Image.asset("images/shoe2.png")),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Arrivals",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff1A2530)),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xff5B9EE1)),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset("images/slider.png",height: 120,width: 335,)
          ],
        ),
      ),

    );
  }
}
