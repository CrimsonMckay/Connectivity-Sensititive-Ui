import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:internet_sensitive_ui/Services/connectivity_service.dart';
import 'package:internet_sensitive_ui/enums/connectivity_status.dart';
import 'package:provider/provider.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<ConnectivityStatus>(
      initialData: ConnectivityStatus.offline,
    create: (context) => ConnectivityService().connectionStatusController.stream,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home:HomeView(),
      ),
    );
  }
}

