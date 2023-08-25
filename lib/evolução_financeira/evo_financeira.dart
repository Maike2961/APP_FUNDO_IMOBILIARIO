import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'classe_financeira.dart';


class ThirdPage extends StatelessWidget {
  static List<charts.Series<financeiro, String>> _createall(){
    final Previsto =[
       financeiro("fev/2023", 100),
       financeiro("mar/2023", 150),
       financeiro("abr/2023", 180),
       financeiro("mai/2023", 210)
    ];

    final Realizado = [
      new financeiro("fev/2023", 92),
      new financeiro("mar/2023", 138),
      new financeiro("abr/2023", 150),
      new financeiro("mai/2023", 197)
    ];

    return[
       new charts.Series<financeiro, String>(
        id: "Previsto" ,
        data: Previsto,
        domainFn: (financeiro finan, _) => finan.ano,
        measureFn: (financeiro finan, _) => finan.quatity,
         colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      ),
      new charts.Series<financeiro, String>(
        id: "Realizado",
        data: Realizado,
        domainFn: (financeiro finan, _) => finan.ano,
        measureFn: (financeiro finan, _) => finan.quatity,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
      ),
    ];

  }
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: charts.BarChart(
          _createall(),
          animationDuration: Duration(seconds: 1),
          barGroupingType: charts.BarGroupingType.grouped,
          behaviors: [
            charts.ChartTitle("Evolução Financeira Mensal",
              innerPadding: 50,
              titleStyleSpec: const charts.TextStyleSpec(
                fontSize: 18,
                fontFamily: 'Georgia',
              ),
              behaviorPosition: charts.BehaviorPosition.top,
            ),
            charts.SeriesLegend(
              showMeasures: true,
              measureFormatter: (quantity){
                return quantity == null? '-' : '${quantity}%';
              },
                position: charts.BehaviorPosition.bottom,
                outsideJustification:
                charts.OutsideJustification.middleDrawArea,
                cellPadding: EdgeInsets.all(10)
            )
          ],
        ),
      ),
    );
  }
}
