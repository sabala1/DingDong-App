import 'package:flutter/material.dart';

import 'package:dingdong_app/views/widgets/custom_appbar.dart';

class SearchScreen extends StatelessWidget {

   SearchScreen({
    Key? key,
   
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(indexpage:2),
      body: Center(child: Text('search')),
    );
  }
}