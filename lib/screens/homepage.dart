import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_best/controllers/counterController.dart';
import 'package:getx_best/screens/otherScreen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Counter App'),
        centerTitle: true,
      ),
      body: Obx(()=>Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${counterController.counter.value} clicks',textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 30,
                ),),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){
                  Get.to(OtherScreen());
                },
                child: Text('To other Page'),
              ),
            ],
          ),
        ],
      ),),
      floatingActionButton: Wrap(
        direction: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: (){
                counterController.increment();
              },
              child: Icon(Icons.add),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: (){
                counterController.decrement();
              },
              child: Icon(Icons.remove),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: (){
                counterController.resetCounter();
              },
              child: Icon(Icons.delete),
            ),
          )
        ],
      ),

    );
  }
}
