import 'package:flutter/material.dart';
import 'package:task_ui_design/ui/pages/first_screen.dart';
import 'package:task_ui_design/ui/pages/second_screen.dart';
import 'package:task_ui_design/ui/pages/third_screen.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/homepage";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [
      FirstScreen(),
      SecondScreen(),
      ThirdScreen(),
    ];
    int selectedIndex = 0;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Image.asset("images/appBarLeadingImage.png"),
        actions: [
          Stack(
            children: [
              Image.asset("images/appBarActionImage.png"),
              Positioned(
                right: 7,
                top: 5,
                child: Container(
                  height: 15,
                  width: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffF87265)),
                ),
              )
            ],
          )
        ],
        title: ListTile(
          title: Text("Store location",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff707B81))),
          subtitle: Text(
            "Mondolibug, Sylhet",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff1A2530)),
          ),
        ),
      ),
      body: _children[selectedIndex],
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex = value;
              print(selectedIndex.toString());
            });
          },
          currentIndex: selectedIndex,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  "images/home.png",
                  height: 20,
                  width: 20,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "images/favourite.png",
                  height: 20,
                  width: 20,
                ),
                label: ""),
            BottomNavigationBarItem(

                icon: Image.asset(
                  "images/favourite.png",color: Colors.white,
                  height: 20,
                  width: 20,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "images/notification.png",
                  height: 20,
                  width: 20,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.black,
                ),
                label: ""),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff5B9EE1),
          onPressed: () {},
          child: Image.asset(
            "images/appBarActionImage.png",
            color: Colors.white,
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
