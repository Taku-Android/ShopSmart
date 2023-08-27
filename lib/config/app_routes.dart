import 'package:go_router/go_router.dart';
import 'package:shop_smart/features/profile/persentation/screens/wishlist_screen.dart';
import 'package:shop_smart/features/root/persentation/screens/root_navigation_screen.dart';

abstract class AppRoutes {
  static const kRootScreen = '/';
  static const kWishScreen = '/WishList';


  static final router = GoRouter(routes: [

    GoRoute(
      path: kRootScreen,
      builder: (context, GoRouterState state) {
        return const RootNavigationScreen();
      },
    ),
    GoRoute(
      path: kWishScreen,
      builder: (context, GoRouterState state) {
        return const WishlistScreen();
      },
    ),



  ]);
}
