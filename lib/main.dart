import 'package:flutter/material.dart';
import 'package:nike_app/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nike Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'asset/image/fond_auth.jpeg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Column(
          children: [
Container(
  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
  height: MediaQuery.of(context).size.height*0.15,
  width: MediaQuery.of(context).size.width*0.5,
  decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage(
        'asset/image/nike.png'),
    fit: BoxFit.fitWidth,
  ),
),

),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45),
              height: MediaQuery.of(context).size.height*0.25,
              width: MediaQuery.of(context).size.width*0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
                        height: MediaQuery.of(context).size.height*0.06,
                        width: MediaQuery.of(context).size.width*0.6,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color.fromARGB(200, 186, 186, 186),),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromARGB(100, 0, 0, 0)
                        ),
                        child: Center(
                          child: Text('Create an Account',style: TextStyle(color: Colors.grey[350],fontWeight: FontWeight.bold),
                          ),)
                    ),
                  ) ,

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                    child:  Container(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
                        height: MediaQuery.of(context).size.height*0.06,
                        width: MediaQuery.of(context).size.width*0.6,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color.fromARGB(200, 186, 186, 186),),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromARGB(100, 0, 0, 0)
                        ),
                        child: Center(
                          child: Text('Log In',style: TextStyle(color: Colors.grey[350],fontWeight: FontWeight.bold),
                          ),)
                    ),
                  ) ,
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}


class SignIn extends StatefulWidget {
  SignIn({Key key});
  @override
  SignInState createState() => SignInState();
}

class SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'asset/image/fond_auth.jpeg'),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
                height: MediaQuery.of(context).size.height*0.15,
                width: MediaQuery.of(context).size.width*0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'asset/image/nike.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),

              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
                height: MediaQuery.of(context).size.height*0.25,
                width: MediaQuery.of(context).size.width*0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Email',textAlign: TextAlign.start,style: TextStyle(color:Colors.grey[350],shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0.5, 0.5),
                            blurRadius: 1.0,
                            color: Color.fromARGB(150, 0, 0, 0),
                          ),
                        ],
                        ),),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(250, 186, 186, 186),),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(150, 0, 0, 0)
                      ),
                      child: TextFormField(
                        style: TextStyle(color: Colors.grey[350]),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Your email',
                            hintStyle: TextStyle(color:Colors.grey[350] ),
                            labelStyle: TextStyle(color:Colors.grey[350] )
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Password',textAlign: TextAlign.start,style: TextStyle(color:Colors.grey[350],shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0.5, 0.5),
                            blurRadius: 1.0,
                            color: Color.fromARGB(150, 0, 0, 0),
                          ),
                        ],),),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(250, 186, 186, 186),),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(100, 0, 0, 0)
                      ),
                      child: TextFormField(
                        style: TextStyle(color: Colors.grey[350]),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Your password',
                            hintStyle: TextStyle(color:Colors.grey[350] ),
                            labelStyle: TextStyle(color:Colors.grey[350] )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.2),
                child:GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Container(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.6,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(200, 186, 186, 186),),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(150, 0, 0, 0)
                      ),
                      child: Center(
                        child: Text('Sign In',style: TextStyle(color: Colors.grey[350],fontWeight: FontWeight.bold),
                        ),)
                  ),
                ) ,
              )

            ],
          ),
        )
    );
  }
}

class SignUp extends StatefulWidget {
  SignUp({Key key});
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'asset/image/fond_auth.jpeg'),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
                height: MediaQuery.of(context).size.height*0.15,
                width: MediaQuery.of(context).size.width*0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'asset/image/nike.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),

              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
                height: MediaQuery.of(context).size.height*0.33,
                width: MediaQuery.of(context).size.width*0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Your name',textAlign: TextAlign.start,style: TextStyle(color:Colors.grey[350],shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0.5, 0.5),
                            blurRadius: 1.0,
                            color: Color.fromARGB(150, 0, 0, 0),
                          ),
                        ],
                        ),),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(250, 186, 186, 186),),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(150, 0, 0, 0)
                      ),
                      child: TextFormField(
                        style: TextStyle(color: Colors.grey[350]),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Your name',
                            hintStyle: TextStyle(color:Colors.grey[350] ),
                            labelStyle: TextStyle(color:Colors.grey[350] )
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Email',textAlign: TextAlign.start,style: TextStyle(color:Colors.grey[350],shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0.5, 0.5),
                            blurRadius: 1.0,
                            color: Color.fromARGB(150, 0, 0, 0),
                          ),
                        ],
                        ),),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(250, 186, 186, 186),),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(150, 0, 0, 0)
                      ),
                      child: TextFormField(
                        style: TextStyle(color: Colors.grey[350]),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Your email',
                            hintStyle: TextStyle(color:Colors.grey[350] ),
                            labelStyle: TextStyle(color:Colors.grey[350] )
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Password',textAlign: TextAlign.start,style: TextStyle(color:Colors.grey[350],shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0.5, 0.5),
                            blurRadius: 1.0,
                            color: Color.fromARGB(150, 0, 0, 0),
                          ),
                        ],),),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(250, 186, 186, 186),),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(100, 0, 0, 0)
                      ),
                      child: TextFormField(
                        style: TextStyle(color: Colors.grey[350]),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Your password',
                            hintStyle: TextStyle(color:Colors.grey[350] ),
                            labelStyle: TextStyle(color:Colors.grey[350] )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.2),
                child:GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Container(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.6,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(200, 186, 186, 186),),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(150, 0, 0, 0)
                      ),
                      child: Center(
                        child: Text('Create Account',style: TextStyle(color: Colors.grey[350],fontWeight: FontWeight.bold),
                        ),)
                  ),
                ) ,
              )

            ],
          ),
        )
    );
  }
}
