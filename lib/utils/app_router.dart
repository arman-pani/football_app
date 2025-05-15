import 'package:flutter/material.dart';
import 'package:football_app/pages/calendar_page.dart';
import 'package:football_app/pages/home_page.dart';
import 'package:football_app/pages/index.dart';
import 'package:football_app/pages/medals_page.dart';
import 'package:football_app/pages/more_page.dart';
import 'package:football_app/pages/news_page.dart';
import 'package:football_app/utils/app_router_constants.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _sectionNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRouterConstants.homePage,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return IndexPage(navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _sectionNavigatorKey,
          routes: [
            GoRoute(
              name: 'home',
              path: AppRouterConstants.homePage,
              builder: (context, state) => const HomePage(),
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'calendar',
              path: AppRouterConstants.calendarPage,
              builder: (context, state) => const CalendarPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'medals',
              path: AppRouterConstants.medalsPage,
              builder: (context, state) => const MedalsPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'news',
              path: AppRouterConstants.newsPage,
              builder: (context, state) => const NewsPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'more',
              path: AppRouterConstants.morePage,
              builder: (context, state) => const MorePage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
