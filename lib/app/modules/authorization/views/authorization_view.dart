import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/authorization_controller.dart';

class AuthorizationView extends GetView<AuthorizationController> {
  const AuthorizationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return /* Scaffold(
      appBar: AppBar(
        title: const Text('AuthorizationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: "Email"),
                controller: ,
              ),
              SizedBox(),
              TextFormField(),
              ElevatedButton(),
              TextButton(),
            ],
          ),
        ),
      ),
    ); */
        Scaffold(
      appBar: AppBar(title: Text('LOGIN')),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: controller.loginFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller.emailController,
                decoration: const InputDecoration(labelText: 'E-mail'),
                validator: controller.validator,
              ),
              TextFormField(
                controller: controller.passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                validator: AuthorizationController().validator,
                obscureText: true,
              ),
              ElevatedButton(
                child: Text('Login'),
                onPressed: controller.login,
              )
            ],
          ),
        ),
      ),
    );
  }
}
