import 'package:flutter/material.dart';

class UserImageSmall extends StatelessWidget {
  const UserImageSmall({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, right: 8),
      height: 66,
      width: 66,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
    );
  }
}
