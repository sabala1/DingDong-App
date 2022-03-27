import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final String bio;
  final String jobTitle;

  const User(
      {required this.id,
      required this.name,
      required this.age,
      required this.imageUrls,
      required this.bio,
      required this.jobTitle});

  @override
  List<Object?> get props => [
    id, 
    name, 
    age, 
    imageUrls, 
    bio, 
    jobTitle];

  static List<User> users = [
    const User(
      id: 1,
      name: 'HERMAN',
      age: 24,
      imageUrls: [
        'https://media.istockphoto.com/photos/portrait-of-smiling-couple-standing-outdoors-in-front-of-house-with-picture-id1254543554?k=20&m=1254543554&s=612x612&w=0&h=waavHjyxECUINYJKnaEgLVz4ulo-tYyTyfIeW-n54K4=',
        'https://media.istockphoto.com/photos/portrait-of-smiling-couple-standing-outdoors-in-front-of-house-with-picture-id1254543554?k=20&m=1254543554&s=612x612&w=0&h=waavHjyxECUINYJKnaEgLVz4ulo-tYyTyfIeW-n54K4=',
        'https://media.istockphoto.com/photos/portrait-of-smiling-couple-standing-outdoors-in-front-of-house-with-picture-id1254543554?k=20&m=1254543554&s=612x612&w=0&h=waavHjyxECUINYJKnaEgLVz4ulo-tYyTyfIeW-n54K4=',
        'https://media.istockphoto.com/photos/portrait-of-smiling-couple-standing-outdoors-in-front-of-house-with-picture-id1254543554?k=20&m=1254543554&s=612x612&w=0&h=waavHjyxECUINYJKnaEgLVz4ulo-tYyTyfIeW-n54K4=',
        'https://media.istockphoto.com/photos/portrait-of-smiling-couple-standing-outdoors-in-front-of-house-with-picture-id1254543554?k=20&m=1254543554&s=612x612&w=0&h=waavHjyxECUINYJKnaEgLVz4ulo-tYyTyfIeW-n54K4=', 
      ],
      jobTitle: 'is a Norwegian producer and actor',
      bio: 'Give me...'
    ),
    const User(
      id: 2,
      name: 'Henrik Holm',
      age: 26,
      imageUrls: [
        'https://media.istockphoto.com/photos/asian-business-woman-waiting-for-airplane-picture-id1314203176?s=612x612',
        'https://media.istockphoto.com/photos/asian-business-woman-waiting-for-airplane-picture-id1314203176?s=612x612',
        'https://media.istockphoto.com/photos/asian-business-woman-waiting-for-airplane-picture-id1314203176?s=612x612',
        'https://media.istockphoto.com/photos/asian-business-woman-waiting-for-airplane-picture-id1314203176?s=612x612',
        'https://media.istockphoto.com/photos/asian-business-woman-waiting-for-airplane-picture-id1314203176?s=612x612',
      ],
      jobTitle: 'Norwegian actor and model',
      bio: 'Give me...2'
    ),
    const User(
      id: 3,
      name: 'JOSEFINE FRIDA',
      age: 25,
      imageUrls: [
        'https://media.istockphoto.com/photos/female-real-estate-agent-showing-unfurnished-house-to-married-young-picture-id1336547608',
        'https://media.istockphoto.com/photos/female-real-estate-agent-showing-unfurnished-house-to-married-young-picture-id1336547608',
        'https://media.istockphoto.com/photos/female-real-estate-agent-showing-unfurnished-house-to-married-young-picture-id1336547608',
        'https://media.istockphoto.com/photos/female-real-estate-agent-showing-unfurnished-house-to-married-young-picture-id1336547608',
        'https://media.istockphoto.com/photos/female-real-estate-agent-showing-unfurnished-house-to-married-young-picture-id1336547608', 
      ],
      jobTitle: 'is a Norwegian actress',
      bio: 'Give me...3'
    ),
    const User(
      id: 4,
      name: 'Anya Taylor-Joy',
      age: 25,
      imageUrls: [
        'https://media.istockphoto.com/photos/chef-opening-refrigerator-door-picture-id802504572?s=612x612',
        'https://media.istockphoto.com/photos/chef-opening-refrigerator-door-picture-id802504572?s=612x612',
        'https://media.istockphoto.com/photos/chef-opening-refrigerator-door-picture-id802504572?s=612x612',
        'https://media.istockphoto.com/photos/chef-opening-refrigerator-door-picture-id802504572?s=612x612',
        'https://media.istockphoto.com/photos/chef-opening-refrigerator-door-picture-id802504572?s=612x612', 
      ],
      jobTitle: 'นักแสดงและนักเดินแบบ',
      bio: 'Give me...4'
    ),
    const User(
      id: 5,
      name: 'Hunter',
      age: 23,
      imageUrls: [
        'https://media.istockphoto.com/photos/close-up-of-cute-baby-rabbit-picture-id1297963192?k=20&m=1297963192&s=612x612&w=0&h=8vin1mVxDepE7AXxqdm4Gsxzrpv-H7bkWV8diCubFjc=',
        'https://media.istockphoto.com/photos/close-up-of-cute-baby-rabbit-picture-id1297963192?k=20&m=1297963192&s=612x612&w=0&h=8vin1mVxDepE7AXxqdm4Gsxzrpv-H7bkWV8diCubFjc=',
        'https://media.istockphoto.com/photos/close-up-of-cute-baby-rabbit-picture-id1297963192?k=20&m=1297963192&s=612x612&w=0&h=8vin1mVxDepE7AXxqdm4Gsxzrpv-H7bkWV8diCubFjc=',
        'https://media.istockphoto.com/photos/close-up-of-cute-baby-rabbit-picture-id1297963192?k=20&m=1297963192&s=612x612&w=0&h=8vin1mVxDepE7AXxqdm4Gsxzrpv-H7bkWV8diCubFjc=',
        'https://media.istockphoto.com/photos/close-up-of-cute-baby-rabbit-picture-id1297963192?k=20&m=1297963192&s=612x612&w=0&h=8vin1mVxDepE7AXxqdm4Gsxzrpv-H7bkWV8diCubFjc=', 
      ],
      jobTitle: 'นักแสดงและนักเดินแบบ',
      bio: 'Give me...5'
    ),
  ];
}
