import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
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
        IconButton(
            icon: const Icon(
              Icons.home,
              color: Colors.deepOrangeAccent,
            ),
            onPressed: () {}),
        IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.deepOrangeAccent,
            ),
            onPressed: () {}),
        IconButton(
            icon: const Icon(
              Icons.message,
              color: Colors.deepOrangeAccent,
            ),
            onPressed: () {}),
        IconButton(
            icon: const Icon(
              Icons.person,
              color: Colors.deepOrangeAccent,
            ),
            onPressed: () {}),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}