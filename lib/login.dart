import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class MyLogin extends StatelessWidget{


  void click(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(





          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // decoration: const BoxDecoration(
          //     gradient: LinearGradient(
          //         begin: Alignment.topLeft,
          //         end: Alignment.bottomRight,
          //         colors: [
          //           Colors.green,
          //           Colors.white24,
          //           Colors.white24,
          //         ]
          //     )
          // ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 50,),
              SizedBox(
                height:120,
                width: 300,
                child: LottieBuilder.assets("assets/lottie/login2.json"),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 325,
                height: 320,
                decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30,),
                    const Text("Login",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight:FontWeight.bold
                      ),),
                    const SizedBox(height: 10,),

                    const SizedBox(height: 30,),
                    Container(
                      width: 260,
                      height: 60,
                      child: const TextField(
                        decoration: InputDecoration(
                            suffix: Icon(FontAwesomeIcons.envelope,color: Colors.green,),
                            labelText: "username",
                            fillColor: Colors.transparent,
                            filled: true,
                            hintText: 'username',

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 12,),
                    Container(
                      width: 260,
                      height: 60,
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.transparent,
                            filled: true,
                            hintText: 'Password',
                            suffix: Icon(FontAwesomeIcons.eyeSlash,color: Colors.green,),
                            labelText: "password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding:const EdgeInsets.fromLTRB(20, 0, 30, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: click,
                            child:const Text("Forget Password?",
                              style: TextStyle(
                                  color: Colors.lime
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                      alignment: Alignment.center,
                  width: 250,
                  decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF42A5F5),
                  Color(0xFF42A5F5),
                  Color(0xFF42A5F5),
                ])
        ),
        child: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text('Login',
            style: TextStyle(color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),

        ),

      ),
            Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: click,
                        icon: const Icon(FontAwesomeIcons.facebook,color: Colors.blue)
                    ),
                    IconButton(
                        onPressed: click,
                        icon: const Icon(FontAwesomeIcons.google,color: Colors.green,)
                    ),
                    IconButton(
                        onPressed: click,
                        icon: const Icon(FontAwesomeIcons.instagram,color: Colors.lightGreenAccent,)
                    ),
                  ],
                )
            )

            ],
          ),
        ),

      ),

    );
  }

}

class LottieBuilder {
  static assets(String s
      ) {}
}