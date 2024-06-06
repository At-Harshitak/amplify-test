import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_test/amplifyconfiguration.dart';
import 'package:amplify_test/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initstate() {
    super.initState();
    _configureAmplify();
  }
  final _amplifyInstance= Amplify();



  void _configureAmplify() async {
    try{
    AmplifyAuthCognito amplifyCognito = AmplifyAuthCognito();
    _amplifyInstance.addPlugin(authPlugins: [amplifyCognito]);
    await _amplifyInstance.configure(amplifyconfig);
    // ignore: avoid_print
    print("Configured");
    } catch (e) {
     // ignore: avoid_print
     print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
   return LoginScreen(key: null,);
    
  }
}

class Amplify {
  void addPlugin({required List<AmplifyAuthCognito> authPlugins}) {}
  
  configure(String amplifyconfig) {}
}
