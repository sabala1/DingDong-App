import 'package:dingdong_app/models/user_models.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  final double expandedHeight = 300;
  final double roundedContainerHeight = 50;

  @override
  Widget build(BuildContext context) {
    final User user = User.users[0];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.2,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(                     
                        image: DecorationImage(
                          image: NetworkImage(User.users[0].imageUrls[0]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: expandedHeight - roundedContainerHeight +50,
                      left: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width ,
                        height: roundedContainerHeight,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                height: MediaQuery.of(context).size.height /2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8.0 ),
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${user.name}, ${user.age}',
                            style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${user.jobTitle}',
                            style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.black, 
                              fontSize: 17, 
                              fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(height: 15,),
                          Text(
                            'About',
                            style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.black, 
                              fontSize: 19, 
                              fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${user.bio}',
                            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: Colors.black, 
                              fontSize: 16, 
                              fontWeight: FontWeight.normal,
                              height: 2),
                          ),
                          const SizedBox(height: 200,),
                          Text(
                            'Interests',
                            style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.black, 
                              fontSize: 19, 
                              fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Interests',
                            style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.black, 
                              fontSize: 19, 
                              fontWeight: FontWeight.bold),
                          ),  
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}



/*

import 'package:dingdong_app/models/travel.dart';
import 'package:dingdong_app/models/user_models.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail({Key? key}) : super(key: key);
  final User user = User.users[0];



  Widget _buildDetail() {
    return Container(
      color: Colors.white,
      child: Column(children: [
        _buildUserInfo(),
      ]),
    );
  }

  Widget _buildUserInfo() {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}, ${user.age}',
                  // style: Theme.of(context).textTheme.headline5!.copyWith(
                  //     color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${user.jobTitle}',
                  // style: Theme.of(context).textTheme.headline5!.copyWith(
                  //     color: Colors.black,
                  //     fontSize: 17,
                  //     fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'About',
                  // style: Theme.of(context).textTheme.headline5!.copyWith(
                  //     color: Colors.black,
                  //     fontSize: 19,
                  //     fontWeight: FontWeight.bold),
                ),
                Text(
                  '${user.bio}',
                  // style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  //     color: Colors.black,
                  //     fontSize: 16,
                  //     fontWeight: FontWeight.normal,
                  //     height: 2),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Interests',
                  // style: Theme.of(context).textTheme.headline5!.copyWith(
                  //     color: Colors.black,
                  //     fontSize: 19,
                  //     fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Text(
                  'Interests',
                  // style: Theme.of(context).textTheme.headline5!.copyWith(
                  //     color: Colors.black,
                  //     fontSize: 19,
                  //     fontWeight: FontWeight.bold),
                ),
        ],
      ),
    );
  }
}



class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User user = User.users[0];
    final Travel travel;
    const double expandedHeight = 300;
    const double roundedContainerHeight = 50;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.8,
            child: Image.network(
              User.users[0].imageUrls[0],
              width: MediaQuery.of(context).size.width,
              height: expandedHeight,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: expandedHeight - roundedContainerHeight,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: roundedContainerHeight,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/