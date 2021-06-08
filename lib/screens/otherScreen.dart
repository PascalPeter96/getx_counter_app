import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_best/controllers/counterController.dart';

class OtherScreen extends StatelessWidget {
   OtherScreen({Key? key}) : super(key: key);
   final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other Getx Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Other Screen has ${_counterController.counter.value}'),
          SizedBox(height: 30),
          ElevatedButton(onPressed: (){
            Get.back();
          }, child: Text('Go Back to HomePage'),),
        ],
      ),
    );
  }
}
