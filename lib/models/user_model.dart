import 'package:equatable/equatable.dart';
import 'package:liela/models/models.dart';

class User extends Equatable{
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final String bio;
  final String jobTitle;

  const User({
    required this.id,
    required this.name,
    required this.age,
    required this.imageUrls,
    required this.bio,
    required this.jobTitle
  });

  @override
  List<Object?> get props => [
    id,
    name,
    age,
    imageUrls,
    bio,
    jobTitle,
  ];

  static List<User> users = [
    User(
      id: 1,
      name: 'Asm',
      age: 20,
      imageUrls: [
        'https://images.unsplash.com/photo-1530281700549-e82e7bf110d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
        'https://images.unsplash.com/photo-1563889362352-b0492c224f62?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        'https://unsplash.com/photos/gsMSU6Pg_QI',
        'https://unsplash.com/photos/Ri6DjpT7uPc',
        'https://unsplash.com/photos/UJr_TCSObWY',
      ],
      bio: 'My bio goes here',
      jobTitle: 'Job Title here'
        ),
    User(
        id: 1,
        name: 'Mer',
        age: 25,
        imageUrls: [
          'https://unsplash.com/photos/Md73BFRHR0A',
          'https://unsplash.com/photos/-lyP0OYsEtI',
          'https://unsplash.com/photos/2lgTyxm79ls',
          'https://unsplash.com/photos/NDUfajkNA6I',
          'https://unsplash.com/photos/Olt577JtPM0',
        ],
        bio: 'My bio goes here',
        jobTitle: 'Job Title here'
    )
  ];

}