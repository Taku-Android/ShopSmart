import 'package:go_router/go_router.dart';
import '../features/home/persentation/screens/home_screen.dart';

abstract class AppRoutes {
  static const kHomeScreen = '/';

  static final router = GoRouter(routes: [
    GoRoute(
      path: kHomeScreen,
      builder: (context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
  ]);
}
