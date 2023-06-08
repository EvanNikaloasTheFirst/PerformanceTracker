import 'package:flutter/material.dart';
import 'package:myapplication/components/textfields.dart';
import 'package:myapplication/dashboard.dart';
import 'package:myapplication/forgot_password.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn(BuildContext context) {
    debugPrint('hello');
  }

  final mybuttonkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // this is empty space (create gaps between elements)
              const SizedBox(
                height: 50,
              ),
              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Let's get to work!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 50,
              ),
              //  username input
              TextFields(
                  controller: usernameController,
                  hintText: "Username",
                  obscureText: false),
              const SizedBox(
                height: 25,
              ),
              // password input
              TextFields(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),

              const SizedBox(
                height: 25,
              ),

              // MyButton(onTap: () => signUserIn(context)),

              const SizedBox(
                height: 5,
              ),

              GestureDetector(
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
                onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ForgotPassword())),
              debugPrint("Training")
            },
              ),
              const SizedBox(
                height: 50,
              ),

// sign in button
              Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.symmetric(horizontal: 25.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: GestureDetector(
                  onTap: () {
                    final username = usernameController.text;
                    final password = passwordController.text;
                    // debugPrint('Username: $username');
                    // debugPrint('Password: $password');

                    if(username.isNotEmpty && password.isNotEmpty){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  const Dashboard())
            );
                    } else{
                      debugPrint("error");
                       
                    }
                  },
                  child: const Center(
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member! ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Register!",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue),
                  ),
                ],
              ),
              //sign in button
            ],
          ),
        ),
      ),
    );
  }
}
