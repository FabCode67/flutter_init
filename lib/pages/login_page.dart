import 'package:first_flutter/components/my_button.dart';
import 'package:first_flutter/components/textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn(){}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:  SafeArea(
        child: Center(
         child: Column(
          children: [
           const SizedBox(height: 50),
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(height: 50),
            Text('welcome back you\'ve  been missed',
              style: TextStyle(
                  color: Colors.grey[700],
                fontSize: 16,
              ),
            ),

             const SizedBox(height: 25),
            
             MyTextField(
              controller: usernameController,
              hintText: 'Username',
               obscureText: false,
            ),
            const SizedBox(height: 20,),
             MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
           const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:[
                  Text("forgot password",
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            MyButton(
              onTap: signUserIn,
            ),
            const SizedBox(height: 50,)

            Divider(
              thickness: 0.5,
              color: Colors.grey[400],
            )
          ],
         ),
        ),
      ),
    );
  }
}
