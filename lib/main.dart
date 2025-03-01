import 'package:final_project_odc/core/helper_functions/on_generate_routes.dart';
import 'package:final_project_odc/core/services/custom_bloc_observer.dart';
import 'package:final_project_odc/core/services/get_it_service.dart';
import 'package:final_project_odc/core/services/shared_preferences_singleton.dart';
import 'package:final_project_odc/core/utils/app_color.dart';
import 'package:final_project_odc/features/splash/presentation/views/splash_view.dart';
import 'package:final_project_odc/firebase_options.dart';
import 'package:final_project_odc/generated/l10n.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = CustomBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Prefs.init();
  setupGetit();
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
       minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        localizationsDelegates:const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
               locale: const Locale('ar'),
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
        ),
        onGenerateRoute: onGenerateRoute,
        initialRoute:  SplashView.routeName,
        
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
