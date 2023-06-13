import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbuck_clone/routes/pages.dart';
import 'package:starbuck_clone/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.onboarding,
      getPages: AppPages.pages,
    );
  }
}

// 