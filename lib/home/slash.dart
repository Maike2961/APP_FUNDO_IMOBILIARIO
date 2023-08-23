import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste_touch_screen/home/home.dart';

import '../login/login.dart';

class Slash extends StatefulWidget {
  const Slash({Key? key}) : super(key: key);

  @override
  State<Slash> createState() => _SlashState();
}

class _SlashState extends State<Slash> with SingleTickerProviderStateMixin{


  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
   _navigatetohome();

    Future.delayed(const Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => Login()),
    );
    });
  }

  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }
  _navigatetohome() async{
    await Future.delayed(Duration(milliseconds: 1500), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.purple],
            begin: Alignment.topRight,
            end: Alignment.bottomRight
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Monitoramento", style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white, fontSize: 32),)
          ],
      )
      )
    );
  }
}