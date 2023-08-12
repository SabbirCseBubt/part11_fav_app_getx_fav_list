import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:part11_fav_app_getx/Fruits_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

 FruitsController fruitsController=Get.put(FruitsController());
  @override
  Widget build(BuildContext context) {

    print("build");
    return Scaffold(
      appBar: AppBar(title: Text("Part 11"),
        centerTitle: true,
      ),
      body:
          ListView.builder(

              itemCount: fruitsController.fruits.length,
              itemBuilder: (context,index)
          {
            return Card(
              child: ListTile(

                title: Text(fruitsController.fruits[index].toString()),
                trailing:
                Obx(() => Icon(
                  Icons.favorite,

                  color: fruitsController.temp.contains(fruitsController.fruits[index].toString()) ? Colors.red :Colors.black,


                ),),
                onTap: (){






                  if(fruitsController.temp.contains(fruitsController.fruits[index].toString()))
                  {

                    fruitsController.removeToFavourite(fruitsController.fruits[index].toString());
                  }
                  else
                  {

                    fruitsController.addToFavourite(fruitsController.fruits[index].toString());
                  }


                },
              ),
            );

          }),



    );
  }
}
