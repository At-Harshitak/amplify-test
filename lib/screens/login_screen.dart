import 'package:amplify_test/screens/signup_screen.dart';
import 'package:amplify_test/utils/email_validator.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({required Key key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: "Email"),
                controller: _emailController,
                validator: (value) =>
                    !validateEmail(value!) ? "Email is Invalid" : null,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(labelText: "Password"),
                obscureText: true,
                controller: _passwordController,
                validator: (value) =>
                    value!.isEmpty ? "Password is invalid" : null,
              ),
              const SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: const Text("LOG IN"),
                onPressed: () => _loginButtonOnPressed(context),
                color: Theme.of(context).primaryColor,
              ),
              OutlineButton(
                child: const Text("Create New Account"),
                onPressed: () => _gotoSignUpScreen(context),
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _loginButtonOnPressed(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      //TODO: Login code
    }
  }

  void _gotoSignUpScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SignUpScreen(),
      ),
    );
  }
}

RaisedButton({required Text child, required Future<void> Function() onPressed, required Color color}) {
}

OutlineButton({required Text child, required void Function() onPressed, required Color color}) {
}