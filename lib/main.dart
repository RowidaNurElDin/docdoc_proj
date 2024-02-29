
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/core/dependency_injection/dependency_injection.dart';
import 'package:untitled1/core/routing/app_router.dart';
import 'package:untitled1/doc_app.dart';
import 'package:untitled1/firebase_options.dart';

void main() async {
  setUpDependencyInjections();
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );  runApp( DocDoc(appRouter: AppRouter(),));

}



