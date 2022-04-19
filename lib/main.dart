import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travie/core/hotel_bloc/hotels_bloc_bloc.dart';
import 'package:travie/view/sign_in_page.dart';
import 'package:travie/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HotelsBlocBloc>(
          create: (BuildContext context) => HotelsBlocBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:const SplashScreen(),
      ),
    );
  }
}
