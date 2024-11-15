import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'blocs/auth/auth_bloc.dart';
import 'blocs/home/home_bloc.dart';
import 'di.dart';
import 'firebase_options.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await DI().init();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => DI().sl<HomeBloc>()),
        BlocProvider(create: (context) => DI().sl<AuthBloc>()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF283C63),
        iconTheme: IconThemeData(
          color: Colors.black.withOpacity(0.4),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
