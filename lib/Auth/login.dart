import 'package:flutter/material.dart';
import 'package:flutter_application_4/Auth/signup.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Login extends StatefulWidget{
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();

}
class _LoginState extends State<Login> {
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var email;
    var password;

    bool validateForm() {
      var formdata = formstate.currentState;

      if (formdata != null && formdata.validate()) {
        formdata.save();
        return true;
      } else
        return false;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            "assets/Sign_Up_bg.svg",
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 2),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(10, 300, 10, 200),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign in",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold,fontSize: 30),
                          
                    ),
                    Row(
                      children: [
                        Text("Don't have an account?" ,style:TextStyle(
                          fontSize: 25
                        ),),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return Signup();
                              },
                            ));
                          },
                          child: Text(
                            "Sign Up!",
                            style: TextStyle(fontSize: 25,
                              fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            mouseCursor: MaterialStateMouseCursor.textable,
                          ),
                        ),
                        SizedBox(height: 50.0),
                      ],
                    ),
                   // SizedBox(height: 30.0),
                    Form(
                      key: formstate,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            onSaved: (text) {
                              email = text;
                            },
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'test@email.com',

                              labelStyle: TextStyle(
                                fontSize: 25
                              ),
                              hintStyle: TextStyle(
                                fontSize: 25
                              )
                              
                            ),
                            
                          ),
                          SizedBox(height: 50.0),
                          TextFormField(
                            onSaved: (text) {
                              password = text;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter your password',
                               labelStyle: TextStyle(
                                fontSize: 25
                              ),
                              hintStyle: TextStyle(
                                fontSize: 25
                              )
                            ),
                          ),
                          SizedBox(height: 50.0),
                          ElevatedButton(
                            onPressed: () {
                              print("Email: $email");
                              print("Password: $password");
                              // Handle sign-in logic here
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(600, 60),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
