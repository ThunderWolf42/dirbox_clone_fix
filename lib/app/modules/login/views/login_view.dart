import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background
          SizedBox(
            width: Get.width,
            child: Image.asset(
              "assets/images/bg.png",
              fit: BoxFit.cover),
          ),
          //layer body
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 135,),
                SizedBox(
              //color: Colors.amber,
              width: 200,
              height: 200,
              child: Image.asset(
                "assets/images/pic-1.png",
                fit: BoxFit.contain,
                ),
                ),
                const SizedBox(height: 20 ,),
                const Text("Welcome to ",style: TextStyle(
                  fontSize: 22
                ),),
                const Text("Dirbox",style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold
                ),),
                const SizedBox(height: 20 ,),
                const SizedBox(
                  width: 250,
                  //color: Colors.amber,
                  child: Text(
                    "Best Cloud storage platform for all business and individuals to manage there data\n\nJoin for Free",
                    style: TextStyle(
                      fontSize: 16,

                    ),
                  ),
                ),
                const SizedBox(height: 30 ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEEF7FE).withOpacity(0.4),
                      fixedSize: const Size(150, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ), 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/finger.png"
                        ),
                        const SizedBox(width: 10,),
                        const Text("Smart ID", style: TextStyle(
                          color: Color(0xFF567DF4)
                        ),)
                      ],
                    ),
                    ),
                    ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF567DF4),
                      fixedSize: const Size(150, 50),
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ), 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        const Text("Sign in", style: TextStyle(
                          color: Color(0xfffeeeee)
                         ),
                       ),
                       const SizedBox(width: 10,),
                        Image.asset("assets/icons/panah-kanan.png")
                      ],
                    ),
                    )
                  ],
                ),
                const SizedBox(height: 30 ,),
                const Center(child: Text("Use Social Login",style: TextStyle(fontSize: 16),)),
                const SizedBox(height: 40 ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Image.asset("assets/icons/ig.png"),
                      const SizedBox(width: 30,),
                      Image.asset("assets/icons/twitter.png"),
                      const SizedBox(width: 30,),
                      Image.asset("assets/icons/fb.png"),
                  ],
                ),
                const SizedBox(height: 50 ,),
                const Center(child: Text("Create an Account",style: TextStyle(fontSize: 16),)),
              ],
            ),
          )
        ],
      )
    );
  }
}
