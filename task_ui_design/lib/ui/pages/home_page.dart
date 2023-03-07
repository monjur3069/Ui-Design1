import 'package:flutter/material.dart';
import 'package:task_ui_design/ui/pages/first_screen.dart';
import 'package:task_ui_design/ui/pages/second_screen.dart';
import 'package:task_ui_design/ui/pages/third_screen.dart';
import 'package:task_ui_design/ui/widgets/main_appbar.dart';
import 'package:task_ui_design/ui/widgets/main_drawer.dart';

class HomePage extends StatefulWidget{
  static const String routeName = "/homepage";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex = 0;
  final List _children = [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
    ThirdScreen(),
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: MainAppBar(scaffoldKey: _scaffoldKey,),
      drawer: MainDrawer(),
      endDrawer: MainDrawer(),
      body: _children[selectedIndex],
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
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
          onPressed: () {
           //Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
          },
          child: Image.asset(
            "images/appBarActionImage.png",
            color: Colors.white,
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

}
