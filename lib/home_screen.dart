import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/my_controller.dart';
import 'package:getx_state_management/total_value.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final MyController controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "Books",
                    style: TextStyle(fontSize: 30, color: Colors.orange),
                  ),
                  Expanded(child: Container()),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                      child: IconButton(
                          onPressed: () {
                            Get.find<MyController>().increment();
                          },
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          ))),
                  SizedBox(
                    width: 15,
                  ),
                  GetX<MyController>(
                      init: MyController(),
                      builder: (controller) {
                        return Text(
                          "${controller.books}",
                          style: TextStyle(fontSize: 25),
                        );
                      }),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: IconButton(
                        onPressed: () {
                          controller.decrement();
                        },
                        icon: Icon(
                          Icons.remove,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Pens",
                    style: TextStyle(fontSize: 30, color: Colors.orange),
                  ),
                  Expanded(child: Container()),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                      child: IconButton(
                          onPressed: () {
                            controller.incrementPens();
                          },
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          ))),
                  SizedBox(
                    width: 15,
                  ),
                  GetX<MyController>(
                      init: MyController(),
                      builder: (controller) {
                        return Text(
                          "${controller.pens}",
                          style: TextStyle(fontSize: 25),
                        );
                      }),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: IconButton(
                        onPressed: () {
                          controller.decrementPens();
                        },
                        icon: Icon(
                          Icons.remove,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  Container(
                    height: 70,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(20)),
                    child: MaterialButton(
                      onPressed: () {
                        Get.to(()=>TotalValue());
                      },
                      child: Text(
                        "Total",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
