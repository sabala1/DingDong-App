import 'package:dingdong_app/models/user_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
                      top: expandedHeight - roundedContainerHeight + 50,
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
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                height: MediaQuery.of(context).size.height / 2,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${user.name}, ${user.age}',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${user.jobTitle}',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'About',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${user.bio}',
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        const SizedBox(height: 35),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.20,
                                child: const Divider(
                                  color: Color.fromARGB(255, 117, 116, 116),
                                ),
                              ),
                              Text(
                                ' Ratings ',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                        color: Colors.black,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.20,
                                child: const Divider(
                                  color: Color.fromARGB(255, 117, 116, 116),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 1.0),
                              itemSize: 20.0,
                              itemBuilder: (context, _) => const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            const Text(
                              ' 4.9/5 ',
                              style: TextStyle(fontSize: 15),
                            ),
                            const Text(
                              ' (7 Review)',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/review1.jpg'),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20,),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Sydney Sweeney',
                                    ),
                                    Text(
                                      '❤️❤️❤️❤️❤️',
                                    ),
                                    Text(
                                      'น่าร๊ากกกก ก.ล้านตัวววว',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/review2.jpg'),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20,),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Sydney Sweeney',
                                    ),
                                    Text(
                                      '❤️❤️❤️❤️❤️',
                                    ),
                                    Text(
                                      'น่าร๊ากกกก ก.ล้านตัวววว',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/review3.jpg'),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20,),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Sydney Sweeney',
                                    ),
                                    Text(
                                      '❤️❤️❤️❤️❤️',
                                    ),
                                    Text(
                                      'น่าร๊ากกกก ก.ล้านตัวววว',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/review4.jpg'),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20,),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Sydney Sweeney',
                                    ),
                                    Text(
                                      '❤️❤️❤️❤️❤️',
                                    ),
                                    Text(
                                      'น่าร๊ากกกก ก.ล้านตัวววว',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/review5.jpg'),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20,),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Sydney Sweeney',
                                    ),
                                    Text(
                                      '❤️❤️❤️❤️❤️',
                                    ),
                                    Text(
                                      'ไอ้ต้าวมากแม่',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/review6.jpg'),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20,),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Sydney Sweeney',
                                    ),
                                    Text(
                                      '❤️❤️❤️❤️❤️',
                                    ),
                                    Text(
                                      'น่าร๊ากกกก ก.ล้านตัวววว',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/review7.jpg'),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20,),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Sydney Sweeney',
                                    ),
                                    Text(
                                      '❤️❤️❤️❤️',
                                    ),
                                    Text(
                                      'น่าร๊ากกกก ก.ล้านตัวววว',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

