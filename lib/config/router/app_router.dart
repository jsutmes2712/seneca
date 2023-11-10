import 'package:go_router/go_router.dart';
import 'package:seneca/presentation/screens/home_screen/home_screen.dart';
import 'package:seneca/presentation/screens/login_screen/login._screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name:'login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);