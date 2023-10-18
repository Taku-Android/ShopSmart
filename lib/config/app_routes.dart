import 'package:go_router/go_router.dart';
import 'package:shop_smart/features/auth/persentation/screens/login_screen.dart';
import 'package:shop_smart/features/auth/persentation/screens/register_screen.dart';
import 'package:shop_smart/features/product_detail/presentation/screens/product_detail.dart';
import 'package:shop_smart/features/profile/persentation/screens/order_screen.dart';
import 'package:shop_smart/features/profile/persentation/screens/viewed_recently.dart';
import 'package:shop_smart/features/profile/persentation/screens/wishlist_screen.dart';
import 'package:shop_smart/features/root/persentation/screens/root_navigation_screen.dart';

abstract class AppRoutes {
  static const kRootScreen = '/RootScreen';
  static const kWishScreen = '/WishList';
  static const kOrdersScreen = '/Orders';
  static const kProductDetail = '/ProductDetail';
  static const kViewedRecently = '/viewedRecently';
  static const kLoginScreen = '/';
  static const kRegisterScreen = '/RegisterScreen';


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

    GoRoute(
      path: kProductDetail,
      builder: (context, GoRouterState state) {
        return const ProductDetail();
      },
    ),

    GoRoute(
      path: kViewedRecently,
      builder: (context, GoRouterState state) {
        return const ViewedRecently();
      },
    ),
    GoRoute(
      path: kOrdersScreen,
      builder: (context, GoRouterState state) {
        return const OrderScreen();
      },
    ),
    GoRoute(
      path: kLoginScreen,
      builder: (context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: kRegisterScreen,
      builder: (context, GoRouterState state) {
        return const RegisterScreen();
      },
    ),


  ]);
}
