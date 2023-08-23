import "package:flutter/material.dart";
import "package:teste_touch_screen/variaveis.dart";

class FirstPage extends StatelessWidget {

  var color = Color(0xFF055712);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
        body: ListView(
      children: [
        Container(
          child: ListTile(
              title: Text("Monitoramento",
                style: TextStyle(
                  color: Colors.green.shade900,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  height: 2
                ),
                textAlign: TextAlign.center,
              ),
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 2.0, color: Colors.black12,)
            )
          ),
        ),
       SizedBox(height: 15,),

        Image(
         width: 200,
           height: 250.0,
           image: AssetImage(
               "image/oi.webp",
           ),
       ),
        Container(
         child: Column(
           children: [
             ListTile(
              title: Text("Agente Financiador",
                style: TextStyle(
                  color: color,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
             ),
             Text(agente_financiador),

             ListTile(
               title: Text("Data de Emissão",
                 style: TextStyle(
                   color: color,
                   fontSize: 20,
                   fontWeight: FontWeight.bold
                 ),
                 textAlign: TextAlign.center,
               ),
             ),
             Text(Data_emissao),

             ListTile(
               title: Text("Empreendimento",
                 style: TextStyle(
                   color: Colors.green.shade900,
                   fontSize: 20,
                   fontWeight: FontWeight.bold
                 ),
                 textAlign: TextAlign.center,
               ),
             ),
             Text((Empreendimento)),

             ListTile(
               title: Text("Incorporadora / Grupo",
                 style: TextStyle(
                     color: color,
                     fontSize: 20,
                     fontWeight: FontWeight.bold
                 ),
                 textAlign: TextAlign.center,
               ),
             ),
             Text((Incorporadora)),

             ListTile(
               title: Text("Localização",
                 style: TextStyle(
                     color: color,
                     fontSize: 20,
                     fontWeight: FontWeight.bold
                 ),
                 textAlign: TextAlign.center,
               ),
             ),
             Text((Localizacao)),

             ListTile(
               title: Text("Segmento",
                 style: TextStyle(
                     color: color,
                     fontSize: 20,
                     fontWeight: FontWeight.bold
                 ),
                 textAlign: TextAlign.center,
               ),
             ),
             Text((Segmento)),

             SizedBox(height: 15,)
           ],
         ),
        )
      ],
    ));
  }
}
