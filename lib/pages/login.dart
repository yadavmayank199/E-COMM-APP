import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'home.dart';
import 'signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final _formkey=GlobalKey<FormState>();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  bool _isLoggedIn = false;
  GoogleSignIn _googleSignIn= GoogleSignIn(scopes:['email']);

  _login() async {
    try{
      await _googleSignIn.signIn();
      {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
      setState(() {
        _isLoggedIn=true;
      });
      await firebaseAuth.currentUser().then((user){
        if(user!=null){
          setState(() => _isLoggedIn=true);
        }
      });
    }
    catch(err){
      print(err);
    }
  }

  _logout(){
    _googleSignIn.signOut();
    setState(() {
      _isLoggedIn=false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/login.jpeg',
            fit:BoxFit.fitHeight,
            height: double.infinity,
            width: double.infinity,
          ),

          Container(
            color: Colors.black.withOpacity(0.2),
            width: double.infinity,
            height: double.infinity,
          ),
          //Container(
            //alignment: Alignment.topCenter,
           // child:Image.asset('images/logo2.png',width: 280.0,height: 240.0,)
         // ),



          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:300.0),
              child: Center(
                  child: Form(
                    key: _formkey,
                      child: ListView(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white.withOpacity(0.8),
                            elevation: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left:12.0),
                              child: TextFormField(
                                controller: _emailTextController,
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  icon: Icon(Icons.email),
                                  ),
                                 validator: (value) {
                                    Pattern pattern =
                                        r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
                                    RegExp regex = new RegExp(pattern);
                                    if (!regex.hasMatch(value))
                                      return 'Invalid password';
                                    else
                                      return null;
                                 },
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white.withOpacity(0.8),
                            elevation: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left:12.0),
                              child: TextFormField(
                                controller: _passwordTextController,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  icon: Icon(Icons.lock_outline),
                                  ),
                                 validator: (value) {
                                   if(value.isEmpty){
                                   return"THE PASSWORD CANNOT BE EMPTY";
                                   } else if(value.length<6){
                                     return"THE PASSWORD HAS TO BE AT LEAST 6 CHARACTER LONG";
                                   }
                                   return null;
                                }
                              ),
                            ),
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.blue[300].withOpacity(0.8),
                            elevation: 0.0,
                            child:MaterialButton(onPressed: (){},
                            minWidth: MediaQuery.of(context).size.width,
                             child: Text("Login",textAlign: TextAlign.center,
                             style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:20.0),),
                            ),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.all(8.0),
                        child: Text("Forgot Password",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)
                        ),

                        Padding(padding: const EdgeInsets.all(8.0),
                        child:InkWell(
                          onTap:(){
                            Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUp()));
                          },
                         child: Text ("Sign Up",textAlign: TextAlign.center,style: TextStyle(color: Colors.red),))
                        ),

//                  Expanded(child: Container()),

                        Divider(color: Colors.white,),
                        Text("Other Signin Option",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.red.withOpacity(0.8),
                            elevation: 0.0,
                            child:MaterialButton(onPressed: (){
                              _login();
                            },
                            minWidth: MediaQuery.of(context).size.width,
                             child: Text("Google",textAlign: TextAlign.center,
                             style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              
          ),
          ),
          Visibility(
            visible: _isLoggedIn ?? true,
            child: Container(
              color: Colors.white.withOpacity(0.7),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              ),
            ),
          )
        ],
      ),

      
    );
  }
}