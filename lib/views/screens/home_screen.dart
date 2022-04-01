import 'package:flutter/material.dart';

import 'package:dingdong_app/models/user_models.dart';
import 'package:dingdong_app/views/screens/user_screen.dart';
import 'package:dingdong_app/views/screens/widgets/choice_button.dart';
import 'package:dingdong_app/views/screens/widgets/custom_appbar.dart';
import 'package:dingdong_app/views/screens/widgets/user_card.dart';

class HomeScreen extends StatelessWidget {
 
   HomeScreen({
    Key? key,
  
  }) : super(key: key);
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => HomeScreen(),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(indexpage: 1),
      body: Wrap(
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
            ],
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
                  //  color: Colors.blue,
                  icon: Icons.clear_rounded,
                ),
                ChoiceButton(
                  width: 70,
                  height: 70,
                  size: 40,
                  color: Colors.deepOrange,
                  //color: Colors.blue,
                  icon: Icons.favorite,
                ),
                ChoiceButton(
                  width: 60,
                  height: 60,
                  size: 25,
                  color: Colors.deepOrange,
                  // color: Colors.blue,
                  icon: Icons.message,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*
import 'package:dingdong_app/views/screens/swipe/swipe_bloc.dart';
import 'package:dingdong_app/views/screens/swipe/swipe_event.dart';
import 'package:dingdong_app/views/screens/swipe/swipe_state.dart';
import 'package:dingdong_app/views/screens/widgets/choice_button.dart';
import 'package:dingdong_app/views/screens/widgets/custom_appbar.dart';
import 'package:dingdong_app/views/screens/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:dingdong_app/models/user_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: BlocBuilder<SwipeBloc, SwipeState>(
        builder: (context, state) {
          if (state is SwipeLoding) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SwipeLoded) {
            return Column(
              children: [
                Draggable(
                  child: UserCard(user: state.users[0]),
                  feedback: UserCard(user: state.users[0]),
                  childWhenDragging: UserCard(user: state.users[1]),
                  onDragEnd: (drag) {
                    if (drag.velocity.pixelsPerSecond.dx < 0) {
                      context.read<SwipeBloc>()
                        ..add(
                          SwipeLeftEvent(
                            user: state.users[0],
                          ),
                        );
                      print('Swiped left');
                    } else {
                      context.read<SwipeBloc>()
                        ..add(
                          SwipeRightEvent(
                            user: state.users[0],
                          ),
                        );
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
            );
          } else {
            return const Text('Someting went wrong.');
          }
        },
      ),
    );
  }
}
*/