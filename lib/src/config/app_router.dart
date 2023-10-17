import "package:flutter_go_router/src/pages/pages.dart";
import "package:go_router/go_router.dart";

final appRouter = GoRouter(
  initialLocation: PagesItemListView.routePath,
  routes: [
    GoRoute(
      name: PagesItemListView.routeName,
      path: PagesItemListView.routePath,
      builder: (context, state) => const PagesItemListView(),
    ),
    GoRoute(
      name: PageItemDetailsView.routeName,
      path: PageItemDetailsView.routePath,
      builder: (context, state) =>
          PageItemDetailsView(info: state.extra as String),
    ),
    GoRoute(
      name: Profile.routeName,
      path: Profile.routePath,
      builder: (context, state) => Profile(name: state.extra as String),
    ),
  ],
);
