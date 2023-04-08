import 'package:barber_club/modules/home/home_view.dart';
import 'package:barber_club/modules/partners_details/partners_details_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/partnerDetails',
      builder: (context, state) => const PartnersDetailsView(),
    ),
  ],
);