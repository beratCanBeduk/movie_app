import 'package:flutter/material.dart';
import 'package:movie_application/product/home/services/home_service.dart';
import 'package:movie_application/product/home/view/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.white,
      ),
      home:  MultiRepositoryProvider(
        providers: [
           RepositoryProvider(create:(context) => HomeService(),)
        ],
        child: HomeView(),
      ),
    );
  }
}
