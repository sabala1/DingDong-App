import 'package:dingdong_app/views/screens/person_screen.dart';
import 'package:flutter/material.dart';

import 'package:dingdong_app/views/screens/home_screen.dart';
import 'package:dingdong_app/views/screens/message_screen.dart';
import 'package:dingdong_app/views/screens/search_screen.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  int indexpage;
  CustomAppBar({
    Key? key,
    required this.indexpage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0, //ทำให้ AppBar หาย

      title: Row(
        children: const [
          Expanded(
            flex: 2,
            child: Text(
              'DingDong',
              style: TextStyle(
                color: Color.fromARGB(255, 68, 224, 152),
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
            icon: Icon(
              Icons.home,
              color: indexpage == 1 ? Colors.black : Colors.deepOrangeAccent,
            ),
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(pageBuilder: (_, __, ___) => HomeScreen()),
              );
            }),
        IconButton(
            icon: Icon(
              Icons.search,
              color: indexpage == 2 ? Colors.black : Colors.deepOrangeAccent,
            ),
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(pageBuilder: (_, __, ___) => SearchScreen()),
              );
            }),
        IconButton(
            icon: Icon(
              Icons.message,
              color: indexpage == 3 ? Colors.black : Colors.deepOrangeAccent,
            ),
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(pageBuilder: (_, __, ___) => MessageScreen()),
              );
            }),
        IconButton(
            icon: Icon(
              Icons.person,
              color: indexpage == 4 ? Colors.black : Colors.deepOrangeAccent,
            ),
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(pageBuilder: (_, __, ___) => PerSonScreen()),
              );
            }),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(54.0);
}
