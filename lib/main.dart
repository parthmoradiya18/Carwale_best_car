import 'package:carwale_best_car/Carwale_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Home(),));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,backgroundColor: Colors.purple.shade800,title: Text("Carwale",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),)),
      body: GridView.builder(
          itemCount: Carwale_calss.car_name.length,
          itemBuilder: (context, index) {
        return Card(child:
          Column(children: [
                Container(height: 100,width: 100,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("${Carwale_calss.car_logo[index]}")),borderRadius: BorderRadius.all(Radius.circular(15)),border: Border.all(width: 1,color: Colors.black),),)
         ,Text("${Carwale_calss.car_name[index]}")
          ],),);
      },gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)),
    );
  }
}
