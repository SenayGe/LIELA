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
      name: 'Asmir',
      age: 20,
      imageUrls: [
        'https://images.unsplash.com/photo-1530281700549-e82e7bf110d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
        'https://images.unsplash.com/photo-1563889362352-b0492c224f62?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        'https://images.unsplash.com/photo-1543556153-5e59781a98dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
        'https://images.unsplash.com/photo-1511090289856-9ca50546f1fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        'https://images.unsplash.com/photo-1584653059740-fb6fb91eeeff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
        'https://images.unsplash.com/photo-1545591796-e2936bb2bca3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      ],
      bio: 'My bio goes here lkdjf skdjfskd lskdk slkdfjji lksiels ksilei sjkjfoen mnakeiuf jkdhwohot kskolt lsltihd ekhst',
      jobTitle: 'Job Title here'
        ),
    User(
        id: 2,
        name: 'Mer',
        age: 25,
        imageUrls: [
          'https://images.unsplash.com/photo-1545591796-e2936bb2bca3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1589400867230-3491ceee2934?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80',
          'https://images.unsplash.com/photo-1578616660168-00c572ede4ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
          'https://images.unsplash.com/photo-1553284965-83fd3e82fa5a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80',
          'https://images.unsplash.com/photo-1598974357801-cbca100e65d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2574&q=80',
        ],
        bio: 'My bio goes here lkdjf skdjfskd lskdk slkdfjji lksiels ksilei sjkjfoen mnakeiuf jkdhwohot kskolt lsltihd ekhst ',
        jobTitle: 'Job Title here'
    ),
    User(
        id: 3,
        name: 'Fonzie',
        age: 20,
        imageUrls: [
          'https://images.unsplash.com/photo-1591311337241-cecfd26f1da1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2thdGVib2FyZGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1569135579442-d37b7a0ea74e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2thdGVib2FyZGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1520045892732-304bc3ac5d8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c2thdGVib2FyZGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1550792220-553fd02a239c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c2thdGVib2FyZGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1620283687963-4733dbf7359d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fHNrYXRlYm9hcmRpbmd8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1516687646495-0679d81f6ac1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fHNrYXRlYm9hcmRpbmd8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
        ],
        bio: 'My bio goes here',
        jobTitle: 'Job Title here'
    ),
    User(
        id: 4,
        name: 'Gon',
        age: 20,
        imageUrls: [
          'https://images.unsplash.com/photo-1530281700549-e82e7bf110d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
          'https://images.unsplash.com/photo-1563889362352-b0492c224f62?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1543556153-5e59781a98dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
          'https://images.unsplash.com/photo-1511090289856-9ca50546f1fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1584653059740-fb6fb91eeeff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
          'https://images.unsplash.com/photo-1545591796-e2936bb2bca3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        ],
        bio: 'My bio goes here',
        jobTitle: 'Job Title here'
    ),
    User(
        id: 5,
        name: 'Mugsy',
        age: 20,
        imageUrls: [
          'https://images.unsplash.com/photo-1549719386-74dfcbf7dbed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Ym94aW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1590599652694-4179dbc13a54?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzF8fGJveGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1584464491033-06628f3a6b7b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fG1hcnRpYWwlMjBhcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1526889588514-2e695856df85?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bWFydGlhbCUyMGFydHN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1476525223214-c31ff100e1ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWFydGlhbCUyMGFydHN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1555597673-b21d5c935865?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFydGlhbCUyMGFydHN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
        ],
        bio: 'My bio goes here',
        jobTitle: 'Job Title here'
    ),


  ];

}