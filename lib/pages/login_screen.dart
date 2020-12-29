import 'package:egitim/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen() : super();

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  BuildContext scaffoldContext;

  @override
  Widget build(BuildContext context) {
    scaffoldContext = context;
    return Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Container(
              width: MediaQuery.of(context).size.width / 1.18,
              child: Wrap(
                children: [
                  Center(
                    child: Image.asset(
                      "assets/images/trsbcs-beyaz.png",
                    ),
                  ),
                  Container(height: 50),
                  Card(
                    child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Form(
                          child: Wrap(
                            children: [
                              TextFormField(
                                controller: usernameController,
                                decoration: InputDecoration(
                                    labelText: "Kullanıcı Adı",
                                    labelStyle: TextStyle(color: Colors.orange),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.orange),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.orange),
                                    )),
                              ),
                              Container(height: 20),
                              TextFormField(
                                controller: passwordController,
                                decoration: InputDecoration(
                                    labelText: "Şifre",
                                    labelStyle: TextStyle(color: Colors.orange),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.orange),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.orange),
                                    )),
                              ),

                            ],
                          ),
                        )
                      ),
                  ),
                  Container(height: 10),
                  Row(
                    children: [
                      Container(width: 50),
                      RaisedButton(
                        color: Colors.white,
                        child: Text("Kayıt Ol", style: TextStyle(color: Colors.orange)),
                        onPressed: () {},
                      ),
                      Expanded(child: Container()),
                      RaisedButton(
                        color: Colors.white,
                        child: Text("Giriş Yap", style: TextStyle(color: Colors.orange)),
                        onPressed: () {
                          if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
                            debugPrint(FILL_BLANKS);
                          }

                          
                          username = usernameController.text;
                          password = passwordController.text;
                        },
                      ),
                      Container(width: 50),
                    ],
                  )
                ],
              )
              // child: Card(
              //   child: Container(
              //     width: MediaQuery.of(context).size.width / 1.18,
              //     child: Padding(
              //       padding: EdgeInsets.all(15),
              //       child: Form(
              //         child: Wrap(
              //           children: [
              //             Center(
              //               child: Image.asset(
              //                 'assets/images/trsbcs-beyaz.png',
              //                 width: 150,
              //               )
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              ),
        ));
  }
}
