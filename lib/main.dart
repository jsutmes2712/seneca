import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seneca/firebase_options.dart';
import 'package:seneca/presentation/provider/provider.dart';
import 'package:seneca/config/router/app_router.dart';
import 'package:seneca/config/theme/app_theme.dart';

void main() async {

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider() )
      ],
      child: MaterialApp.router(
        routerConfig: appRouter,
        theme: AppTheme(selectedColor: 1).getTheme(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
