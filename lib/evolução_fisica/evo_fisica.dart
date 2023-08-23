import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:teste_touch_screen/variaveis.dart';

class SecondPage extends StatelessWidget {

  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final PrevistoData = [
      new OrdinalSales('fev/2023', pre_fev),
      new OrdinalSales('mar/2023', pre_mar),
      new OrdinalSales('abr/2023', pre_abr),
      new OrdinalSales('mai/2023', pre_mai),
    ];

    final RealizadoData = [
      new OrdinalSales('fev/2023', rea_fev),
      new OrdinalSales('mar/2023', rea_mar),
      new OrdinalSales('abr/2023', rea_abr),
      new OrdinalSales('mai/2023', rea_mai),
    ];


    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Previsto',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: PrevistoData,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault
      ),
      new charts.Series<OrdinalSales, String>(
        id: 'Realizado',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: RealizadoData,
          colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
      padding: EdgeInsets.all(15),
      child: charts.BarChart(

        animationDuration: const Duration(seconds: 1),
        _createSampleData(),
        barGroupingType: charts.BarGroupingType.grouped,
        behaviors: [
          charts.ChartTitle("Evolução Fisíca Mensal",
            innerPadding: 50,
            titleStyleSpec: charts.TextStyleSpec(
              fontSize: 20,
              fontFamily: 'Georgia',
            ),
            behaviorPosition: charts.BehaviorPosition.top,
          ),
          charts.SeriesLegend(position: charts.BehaviorPosition.bottom, outsideJustification: charts.OutsideJustification.middleDrawArea, cellPadding: EdgeInsets.all(10)),

        ],

      ),
    ),

    );
  }

}

class OrdinalSales {
  final String year;
  final int sales;
  OrdinalSales(this.year, this.sales);
}