import 'package:go_router/go_router.dart';
import 'package:shop_smart/features/root/persentation/screens/root_navigation_screen.dart';
import '../features/home/persentation/screens/home_screen.dart';

abstract class AppRoutes {
  static const kRootScreen = '/';
  static const kHomeScreen = '/home';
  static const kCartScreen = '/cart';
  static const kSearchScreen = '/search';
  static const kProfileScreen = '/profile';

  static final router = GoRouter(routes: [

    GoRoute(
      path: kRootScreen,
      builder: (context, GoRouterState state) {
        return const RootNavigationScreen();
      },
    ),
    GoRoute(
      path: kHomeScreen,
      builder: (context, GoRouterState state) {
        return const HomeScreen();
      },
    ),



  ]);
}
