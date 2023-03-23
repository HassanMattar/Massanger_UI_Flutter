import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/massnger/massnger.dart';

import 'package:flutter_application_1/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image(
                    image: AssetImage('images/user.png'),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  formFialedDefulte(
                      conroller: emailController,
                      type: TextInputType.emailAddress,
                      preIcon: Icon(Icons.email),
                      lable: 'Email Adress',
                      validator: 'you should enter the email'),
                  SizedBox(
                    height: 15.0,
                  ),
                  formFialedDefulte(
                      conroller: passwordController,
                      type: TextInputType.name,
                      preIcon: Icon(Icons.lock),
                      lable: 'Password',
                      sufIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              pass = !pass;
                            });
                          },
                          icon: pass
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off)),
                      validator: 'you should enter the password',
                      ispassword: pass),
                  SizedBox(
                    height: 20.0,
                  ),
                  buttonDefult(
                      color: Colors.blue[800],
                      text: 'Login',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                       
                                setState(() {});
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Massnger()),
                            );
                          
                        }
                        print(passwordController.text);
                        print(emailController.text);
                      },
                      radius: 12),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register Now',
                          style: TextStyle(color: Colors.blue[900]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
