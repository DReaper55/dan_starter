
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

// import 'core/services/navigation_services.dart';
// import 'core/utils/routes.dart';
// import 'core/utils/strings.dart';


// final container = ProviderContainer();

void main() async {
  /*WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Keep showing splash screen
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Set the status bar color
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: MyAppColors.white,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarColor: MyAppColors.primary));

  // Device can only stay in portrait mode
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  await dotenv.load(fileName: ".env");

  // Perform the token check before running the app
  final String initialRoute = await getInitialRoute();

  runApp(ProviderScope(child:
  MyAppCustomer(initialRoute: initialRoute,)));*/
}

/*Future<String> getInitialRoute() async {
  // Get token from server

  final token = 'jkj';
  FlutterNativeSplash.remove();
  return token != null && token.isNotEmpty ? Routes.homepage : Routes.getStarted;
}*/

/*class MyAppCustomer extends HookConsumerWidget {
  final String initialRoute;
  const MyAppCustomer({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    precacheImage(const AssetImage(AssetStrings.logo), context);

    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: MyAppColors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        primarySwatch: MyAppColors.primarysWatch,
        scaffoldBackgroundColor: MyAppColors.white,
        splashColor: MyAppColors.lightGrey,
      ),
      initialRoute: initialRoute,
      onGenerateRoute: Routes.generateRoute,
      navigatorKey: ref.read(navigationService).navigatorKey,
    );
  }
}*/
