import 'package:covid_tracker/Model/world_states.dart';
import 'package:covid_tracker/View/countries_list_screen.dart';
import 'package:covid_tracker/ViewModel/world_sates_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pie_chart/pie_chart.dart';

class WorldStates extends StatefulWidget {
  const WorldStates({Key? key}) : super(key: key);

  @override
  _WorldStatesState createState() => _WorldStatesState();
}

class _WorldStatesState extends State<WorldStates> with TickerProviderStateMixin {


  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 1000),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();

  }


  WorldStatesViewModel newsListViewModel = WorldStatesViewModel();

  final colorList = <Color>[
    Color(0xff4285F4),
    Color(0xff1aa260),
    Color(0xffde5246),

  ];


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(height:  MediaQuery.of(context).size.height * .01,),
                FutureBuilder(
                    future: newsListViewModel.fetchWorldRecords(),
                    builder: (context,AsyncSnapshot<WorldStatesModel> snapshot){
                  if(!snapshot.hasData){

                    return Expanded(
                      flex: 1,
                      child: SpinKitFadingCircle(
                        color: Colors.white,
                        size: 50.0,
                        controller: _controller,
                      ),
                    );
                  }else {
                    return Column(
                      children: [
                        PieChart(
                          dataMap: {
                            "Total": double.parse(snapshot.data!.cases!.toString()),
                            "Recovered": double.parse(snapshot.data!.recovered.toString()),
                            "Deaths": double.parse(snapshot.data!.deaths.toString()),
                          },
                          animationDuration: Duration(milliseconds: 1200),
                          chartLegendSpacing: 32,
                          chartRadius: MediaQuery.of(context).size.width / 3.2,
                          colorList: colorList,
                          initialAngleInDegree: 0,
                          chartType: ChartType.ring,
                          ringStrokeWidth: 25,
                          legendOptions: const LegendOptions(
                            showLegendsInRow: false,
                            legendPosition: LegendPosition.left,
                            showLegends: true,
                            legendTextStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          chartValuesOptions: const ChartValuesOptions(
                            showChartValueBackground: true,
                            showChartValues: true,
                            showChartValuesInPercentage: true,
                            showChartValuesOutside: true,
                            decimalPlaces: 1,
                          ),

                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * .06),
                          child: Card(
                            child: Column(
                              children: [
                                ReusableRow(title: 'Total Cases', value: snapshot.data!.cases.toString()),
                                ReusableRow(title: 'Deaths', value: snapshot.data!.deaths.toString()),
                                ReusableRow(title: 'Recovered', value: snapshot.data!.recovered.toString()),
                                ReusableRow(title: 'Active', value: snapshot.data!.active.toString()),
                                ReusableRow(title: 'Critical', value: snapshot.data!.critical.toString()),
                                ReusableRow(title: 'Today Deaths', value: snapshot.data!.todayDeaths.toString()),
                                ReusableRow(title: 'Today Recovered', value: snapshot.data!.todayRecovered.toString()),

                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const CountriesListScreen()));
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xff1aa260),
                              borderRadius:BorderRadius.circular(10)
                            ),
                            child: const Center(
                              child: Text('Track Countries'),
                            ),
                          ),
                        )
                      ],
                    );
                  }
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  String title, value ;
   ReusableRow({Key? key , required this.title, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10 , right: 10 , top: 10 , bottom: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Text(value)
            ],
          ),
          SizedBox(height: 5,),
          Divider()
        ],
      ),
    );
  }
}

