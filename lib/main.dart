import 'package:flutter/material.dart';
import 'package:islami_c11_friday/home/hadeth_Details.dart';
import 'package:islami_c11_friday/home/home.dart';
import 'package:islami_c11_friday/my_theme_data.dart';
import 'package:islami_c11_friday/providers/my_provider.dart';
import 'package:islami_c11_friday/providers/sura_details_provider.dart';
import 'package:islami_c11_friday/sura_details.dart';
import 'package:provider/provider.dart';

import 'home/bottom_sheets/x.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => MyProvider(),
    ),

  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: Provider.of<MyProvider>(context).mode,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
    );
  }
}
