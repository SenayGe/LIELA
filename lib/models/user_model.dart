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
        'https://unsplash.com/photos/yihlaRCCvd4',
        'https://unsplash.com/photos/gsMSU6Pg_QI',
        'https://unsplash.com/photos/SCIRnLEtqWc',
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