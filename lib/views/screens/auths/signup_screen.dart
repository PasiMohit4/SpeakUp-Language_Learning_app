import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';
import 'package:speak_up/views/screens/auths/login_screen.dart';
import 'package:speak_up/views/widgets/text_input_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _uersnameController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return  Form(
      key: _formkey,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Register',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700
                ),
              ),
              const SizedBox(height: 25,),
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage('https://www.pngitem.com/pimgs/m/150-1503945_transparent-user-png-default-user-image-png-png.png'),
                    backgroundColor: Colors.black,
                  ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                      onPressed: () => authController.pickImage(),
                      icon: const Icon(Icons.add_a_photo),
                    ),

                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _uersnameController,
                  labelText: 'Username',
                  icon: Icons.person,
                  validator: (value) {
                    if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return 'Enter Correct Name';
                    }
                    return null; // input is valid
                  },
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _emailController,
                  labelText: 'Email',
                  icon: Icons.email,
                  validator: (value) {
                    if (value!.isEmpty || !RegExp(r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9]+(\.[a-zA-Z0-9]+)+$').hasMatch(value)) {
                      return 'Enter a valid email address';
                    }
                    return null; // input is valid
                  },
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _passwordController,
                  labelText: 'Password',
                  icon: Icons.lock,
                  isObscure: true,
                  validator: (value) {
                    if (value!.isEmpty || _passwordController.text.length < 8) {
                      return 'Password contains 8 character';
                    }
                    return null; // input is valid
                  },
                ),
              ),
              const SizedBox(height: 30,),
              Container(
                width: MediaQuery.of(context).size.width-40,
                height: 50,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(20)
                    )
                ),
                child: InkWell(
                  onTap: () {
                    if(_formkey.currentState?.validate() ?? false) {
                      authController.registerUser(
                        _uersnameController.text,
                        _emailController.text,
                        _passwordController.text,
                        authController.profilePhoto,
                      );
                    }
                  },
                  child: const Center(
                    child: Text(
                      'Register',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              const Text("Or"),
              const SizedBox(height: 5,),
              GestureDetector(
                onTap: () {

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://seeklogo.net/wp-content/uploads/2015/09/google-favicon-vector-400x400.png',
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account? ' , style: TextStyle(fontSize: 20),),
                  InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),
                      ),
                    ),
                    child: Text(
                      'Login' , style: TextStyle(
                        fontSize: 20,
                        color: buttonColor
                    ),
                    ),
                  ),
                ],
              ),
            ],
          ),

        ),
      ),
    );
  }
}
