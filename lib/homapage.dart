

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled10/iphonemodel.dart';
import 'package:untitled10/realme.dart';
import 'package:untitled10/samsungmodel.dart';
import 'package:untitled10/slider.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List  gridView =[
    {
      "name":'1',
      "picture":'Phoneof Iphone'
    },
    {
      "name":'2',
      "picture":'Phoneof Real ME'
    },
    {
      "name":'3',
      "picture":'Samsung'
    },




  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 197,
            width:  double.infinity,

            child: const SliderScreen(),

          ),

          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(right: 230.0),
            child: Text("Categoris",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),),
          ),
          SizedBox(height: 10,),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: Container(
                color: Colors.white,
                height: 553,
                width: double.infinity,
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  // implement GridView.builder
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      itemCount: gridView.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return GestureDetector(
                          onTap: (){

                            if(gridView[index]['name']=='1')
                            {
                              Get.to( ()=>Iphone());

                            }
                            else if(gridView[index]['name']=='2')
                            {
                              Get.to( ()=>RealMe());

                            }


                            else
                            {
                              Get.to( ()=>Samsung());

                            }












                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                Text(gridView[index]['name']),
                                Text(gridView[index]['picture']),


                              ],
                            ),
                          ),
                        );
                      }),
                ),

              ),
            ),
          ),













        ],

      ),
    );





  }
}
