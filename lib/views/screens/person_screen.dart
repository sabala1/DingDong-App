import 'package:dingdong_app/views/screens/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class PerSonScreen extends StatelessWidget {
  const PerSonScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(indexpage:4),
      body: Center(child: Text('person')),
      
      
    );
  }
}