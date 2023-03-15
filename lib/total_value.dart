import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/my_controller.dart';

class TotalValue extends StatelessWidget {
  TotalValue({Key? key}) : super(key: key);
  
  final MyController controller=Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Total value is ",style: TextStyle(fontSize: 25),),
              SizedBox(height: 20,),
              Obx(() => Text("${controller.sum}",style: TextStyle(fontSize: 25),))
            ],
          ),
        ),
      ),
    );
  }
}
