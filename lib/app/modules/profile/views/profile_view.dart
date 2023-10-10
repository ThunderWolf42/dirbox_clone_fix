import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFf2f2f2) ,
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
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 75,
                      height: 75,
                      child:Image.asset("assets/images/profile.png"), 
                    ),
                    const SizedBox(height:20 ,),
                    const Text("Darrel Alvino Christhoper",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    const SizedBox(height:10 ,),
                    const Text("Flutter dev",style: TextStyle(
                      fontSize: 16,
                    ),),
                    const SizedBox(height:15 ,),
                     const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16
                    ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFFFF317B),
                    ),
                    child: const Text(" NEWBIE",style: TextStyle(color: Colors.white),),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Text("My Folders", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 75,
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      Image.asset("assets/icons/plus.png"),
                      Image.asset("assets/icons/setting.png"),
                      Image.asset("assets/icons/panah-kanan-2.png"),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Folder(
                  title: "Mobile Apps",
                  date: " Maret 04 2023",
                  color: const Color(0xFF415EB6),
                  image: Image.asset("assets/icons/folder-415EB6.png")
                ),
                Folder(
                  title: "Documents",
                  date: " Maret 06 2023",
                  color: const Color(0xFFFFB110),
                  image: Image.asset("assets/icons/folder-FFB110.png")
                ),
              ],
            ),
            ),
            const SizedBox(height: 10 ,),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Folder(
                  title: "APK",
                  date: " Maret 04 2023",
                  color:  const Color.fromRGBO(174, 37, 37, 1),
                  image: Image.asset("assets/icons/folder-AC4040.png")
                ),
                Folder(
                  title: "Pictures",
                  date: " Maret 06 2023",
                  color: const Color.fromRGBO(13, 227, 217, 1),
                  image: Image.asset("assets/icons/folder-23B0B0.png")
                ),
              ],
            ),
            ),
            const SizedBox(height: 30,),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Text("Recent Uploads", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
                ),        
                Image.asset("assets/icons/sort.png"), 
              ],
            ),
          ),
            const SizedBox(height: 20,),
            ListTile(
              leading:SizedBox(
                width: 50,
                height: 50,
                child: Image.asset("assets/icons/word.png",fit: BoxFit.cover,)
                ) ,
              title: const Text("Struktur Data.docx") ,
              subtitle: const Text("Februari 13 2023"),
              trailing:  const Text("980kb"),
              
              
            )
        ],
      )
    );
  }
}

class Folder extends StatelessWidget {
  const Folder({
    Key? key,
    required this.title,
    required this.date,
    required this.color,
    required this.image,

  }) :super(key: key);

  final String title;
  final String date;
  final Color color;
  final Image image;
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(20),
      width: Get.width*0.4,
      height: 120,
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image,
          const SizedBox(height: 10,),
          Text(title,style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: color
          ),),
          const SizedBox(height: 5,),
          Text(date,style: TextStyle(fontSize: 12,color: color),),
        ],
      ),
    );
  }
}
