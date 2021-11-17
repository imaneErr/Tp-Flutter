import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<SplashScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Starbucks'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
        
     height: 110,
     width: 120,
     decoration: BoxDecoration(
       image: DecorationImage(
         image: AssetImage('assets/images/Starbucks.png'),
         ),
     ),
                    ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'nom',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mot de passe',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.green,
                  child: Text('Mot de passe oublié?'),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('se connecter'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('tu n\'a pas un compte ?'),
                        FlatButton(
                          textColor: Colors.green,
                          child: Text(
                            's\'inscrire',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }
}
// class TextField extends StatelessWidget {
//   const TextField({
//     Key? key, required InputDecoration decoration, required bool obscureText,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//   height: 150.0,
//   width: 190.0,
//   padding: EdgeInsets.only(top: 40),
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(200),
//   ),
//   child: Center(
//     child: Image.asset('asset/images/Starbucks.png'),
//   ),
// );
// Padding(
//    padding: EdgeInsets.all(10),
//    child: TextField(
//        decoration: InputDecoration(
//        border: OutlineInputBorder(),
//        labelText: 'User Name',
//        hintText: 'Enter valid mail id as abc@gmail.com'
//      ),
//    ),
//  );
//  Padding(
//    padding: EdgeInsets.all(10),
//    child: TextField(
//        obscureText: true,
//        decoration: InputDecoration(
//        border: OutlineInputBorder(),
//        labelText: 'Password',
//        hintText: 'Enter your secure password'
//      ),
//    ),
//  );
        

         
// // Padding(
// //       padding: const EdgeInsets.only(left: 20, right:20,top: 160),
// //       child: TextField(
// //           decoration: InputDecoration(
// //           border: OutlineInputBorder(),
// //           labelText: 'nom',
// //           hintText: 'Enter votre email abc@gmail.com',
          
// //         ),
// //       ),
// //       ),
    
//   }
// }