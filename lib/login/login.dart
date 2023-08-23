import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  TextEditingController _emailControler = TextEditingController();
  TextEditingController _senhaControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String email = "";
    String senha = "";

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.green.shade900,
      ),
      body: SafeArea(
        child: Form(
          child: ListView(padding: EdgeInsets.all(15.0), children: [
            SizedBox(
              height: 100,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(color: Colors.black),
              ),
              onChanged: (text){
                email = text;
              },
            ),
            SizedBox(height: 100,),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(color: Colors.black),
              ),
              obscureText: true,
              onChanged: (text){
                senha = text;
            },
            ),
            SizedBox(height: 150,),
            ElevatedButton(
              onPressed: () {
                if (email.contains("@") && senha.isNotEmpty) {
                  Navigator.pushNamed(context, "/home");
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Container(
                        padding: EdgeInsets.all(15),
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                "Por favor, preencha o e-mail e senha corretamente"
                            )
                          ],
                        ),
                      ),
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                    ),
                  );
                }
              },
              child: Text(
                "Entrar",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.green.shade900,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
