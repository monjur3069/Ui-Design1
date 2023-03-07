import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget{
  GlobalKey<ScaffoldState> scaffoldKey;
  MainAppBar({required this.scaffoldKey,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: InkWell(
          onTap: (){
            scaffoldKey.currentState!.openDrawer();
          },
          child: Image.asset("images/appBarLeadingImage.png")),
      actions: [
        Visibility(
          visible: true,
          child: InkWell(
            onTap: (){
              scaffoldKey.currentState!.openEndDrawer();
            },
            child: Stack(
              children: [
                Image.asset("images/appBarActionImage.png"),
                Positioned(
                  right: 7,
                  top: 5,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffF87265)),
                  ),
                )
              ],
            ),
          ),
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
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
