import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: Colors.blue,
        title: Text('Online food Store',style: TextStyle(color: Colors.white),),
        leading: ElevatedButton(onPressed: (){

          }, child: Icon(Icons.home)),
        elevation: 2,
        actions: [
          ElevatedButton(onPressed: (){

            }, child: Icon(Icons.search,color: Colors.white,)),
          SizedBox(height: 10.0,),
          ElevatedButton(onPressed: (){

            }, child: Icon(Icons.more_vert)),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('../images/cald.jpg'),fit: BoxFit.cover)
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    constraints: BoxConstraints.expand(width: double.infinity,height: 100.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      image: DecorationImage(image: AssetImage('../images/eat.jpg'),fit: BoxFit.cover),
                    ),
                  ),
                SizedBox(height: 20.0,),
                Container(
                  height: 400.0,
                  width: double.infinity,

                  child: Column(
                    children: [
                      Text('Welcom to Vegg Online Store'),
                      SizedBox(height: 10.0,),
                      Text('Vegi', style: TextStyle(fontSize: 50.0,color: Colors.white,shadows: [BoxShadow(blurRadius: 5,color: Colors.green.shade900,offset: Offset(3, 5))]),),
                      SizedBox(height: 150.0,),
                      Column(
                        children: [
                          SignInButton(Buttons.Apple, text: "Sign up with Apple" ,
                            onPressed: () {},
                          ),
                          SizedBox(height: 10.0,),
                          SignInButton(Buttons.Google, text: "Sign up with Google",
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 15.0,),
                      Column(
                        children: [
                          Text('By signing in you are agreeing to our',style: TextStyle(color: Colors.grey[800]),),
                          Text('Terms and Privacy Policy',style: TextStyle(color: Colors.grey[800]),),
                        ],
                      ),
                    ],
                  ),
                ),

          ],
        ),
      ),
    );
  }
}
