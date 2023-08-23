import 'package:flutter/material.dart';
import 'package:teste_touch_screen/evolu%C3%A7%C3%A3o_fisica/evo_fisica.dart';
import 'package:teste_touch_screen/login/login.dart';

import '../Sobre_monitamento/monitoramento.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectdItem = 0;
  var _pages = [FirstPage(), SecondPage(), ThirdPage(), FourthPage()];
  var _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Monitoramento de Obra"),
        actions: [
          ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) =>Login()));
              },
              child: Icon(Icons.exit_to_app,),
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
            Colors.green.shade900),
          ),
          )
        ],
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green.shade900,
      ),
      body: PageView(
        children: _pages,
        onPageChanged: (index){
          setState(() {
            _selectdItem = index;
          });
        },
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Sobre", backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.line_axis), label: "Evolução Fisica", backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: "Evolução Financeira" ,backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: "Fotos", backgroundColor: Colors.black),
        ],
        currentIndex: _selectdItem,
        onTap: (index){
          setState(() {
            _selectdItem = index;
            _pageController.animateToPage(_selectdItem, duration: Duration(microseconds: 200), curve: Curves.linear);
          });
        },
      ),
    );
  }
}


class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Third Page"),
      ),
    );
  }
}

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("4"),
      ),
    );
  }
}
