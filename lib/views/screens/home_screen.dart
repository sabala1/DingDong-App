import 'package:dingdong_app/views/screens/widgets/choice_button.dart';
import 'package:dingdong_app/views/screens/widgets/custom_appbar.dart';
import 'package:dingdong_app/views/screens/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:dingdong_app/models/user_models.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => HomeScreen(),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Column(
            children: [
              Draggable(
                child: UserCard(user: User.users[0]),
                feedback: UserCard(user: User.users[0]),
                childWhenDragging: UserCard(user: User.users[1]),
                onDragEnd: (drag) {
                  if (drag.velocity.pixelsPerSecond.dx < 0) {
                    print('Swiped left');
                  } else {
                    print('Swiped right');
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 60,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ChoiceButton(
                      width: 60,
                      height: 60,
                      size: 25,
                      color: Colors.deepOrange,
                      icon: Icons.clear_rounded,
                    ),
                    ChoiceButton(
                      width: 70,
                      height: 70,
                      size: 40,
                      color: Colors.deepOrange,
                      icon: Icons.favorite,
                    ),
                    ChoiceButton(
                      width: 60,
                      height: 60,
                      size: 25,
                      color: Colors.deepOrange,
                      icon: Icons.message,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
