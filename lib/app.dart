import 'package:flutter/material.dart';
import 'package:app/utilities/app_constants.dart';
import 'package:app/landing/landing_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:firebase_core/firebase_core.dart';

class App extends StatelessWidget {
  App({super.key});
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appTitle,

      // Initializing responsive_framework here.
      builder: (context, child) {
        return ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          minWidth: 300,
          debugLog: true,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.autoScaleDown(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ],
          background: Container(color: primaryColor),
        );
      },
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot){
          if(snapshot.hasError){
            print("Error");
            
          }
          if(snapshot.connectionState == ConnectionState.done){
            return LandingScreen();
          }
          return CircularProgressIndicator();
        }
      ),
      
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Ubuntu',
      ),
    );
  }
}
