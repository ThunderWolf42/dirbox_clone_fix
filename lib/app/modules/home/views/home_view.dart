import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFf2f2f2),
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
        title: const Text('My Profile',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.menu,color: Colors.black))
        ],
      ),
      body: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Your Dribbbox", )
            ],
          )
        ],
      )
    );
  }
}
