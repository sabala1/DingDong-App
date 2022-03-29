import 'package:dingdong_app/views/screens/home_screen.dart';
import 'package:dingdong_app/views/screens/message_screen.dart';
import 'package:dingdong_app/views/screens/search_screen.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  int pageIdx = 0;
  CustomAppBar({
    Key? key,
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
        Column(
          children: [
            IconButton(
                icon: const Icon(
                  Icons.home,
                  color: Colors.deepOrangeAccent,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                }),
          ],
        ),
        IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.deepOrangeAccent,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchScreen(),
                ),
              );
            }),
        IconButton(
            icon: const Icon(
              Icons.message,
              color: Colors.deepOrangeAccent,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageScreen(),
                ),
              );
            }),
        IconButton(
            icon: const Icon(
              Icons.person,
              color: Colors.deepOrangeAccent,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchScreen(),
                ),
              );
            }),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
