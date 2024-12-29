import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:swifty_proteins/core/navigation/app_router.gr.dart';

@Singleton()
@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/main_page',
          initial: true,
          page: MainRoute.page,
        ),
        AutoRoute(
          path: '/register',
          page: RegisterRoute.page,
        ),
        AutoRoute(
          path: '/auth',
          page: AuthRoute.page,
        ),
        AutoRoute(
          path: '/home_page',
          page: HomeRoute.page,
        ),
        AutoRoute(
          path: '/collection_view',
          page: CollectionRoute.page,
        ),
        AutoRoute(
          path: '/ligand_info',
          page: LigandInfoRoute.page,
        ),
      ];

  @override
  List<AutoRouteGuard> get guards => [];
}
