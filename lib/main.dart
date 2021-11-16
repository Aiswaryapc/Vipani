import 'package:flutter/material.dart';
import 'package:vipani/features/presentation/pages/flow.dart';
import 'package:vipani/features/presentation/pages/flow.dart';
import 'package:vipani/on_generate_route.dart';

import 'features/presentation/pages/profile.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "Shop App",
      onGenerateRoute: OnGenerateRoute.route,
      initialRoute: "/",
      routes: {
        "/": (context) {
          return const FlowPage();
        },
      },
    ));
