import 'package:clean_arch_movie/view/page/splash_page/splash_page.dart';
import 'package:go_router/go_router.dart';

class RouterBaseConfig {
  RouterBaseConfig._();

  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(path: '/', builder: (context, state) => const SplashPage()),
    ],
  );
}
