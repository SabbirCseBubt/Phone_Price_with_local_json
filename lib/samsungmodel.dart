import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled10/PhoneModel.dart';
import 'package:untitled10/main.dart';
import 'package:untitled10/productdetailed.dart';




class Samsung extends StatefulWidget {
  const Samsung({super.key});

  @override
  State<Samsung> createState() => _SamsungState();
}

class _SamsungState extends State<Samsung> {

  PhoneModel? p1;

  @override
  void initState() {
    super.initState();
    loadLocalJson().then((category) {
      setState(() {
        p1 = category;

      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('SamSung'),
        ),
        body: ListView.separated(
            itemCount: 2,
            separatorBuilder: (BuildContext context, int index) =>
            const Divider(height: 3, color: Colors.white),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                // Set the shape of the card using a rounded rectangle border with a 8 pixel radius
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                // Set the clip behavior of the card
                clipBehavior: Clip.antiAliasWithSaveLayer,
                // Define the child widgets of the card
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/iphone.png',
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),

                    // Add a container with padding that contains the card's title, text, and buttons
                    Container(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Display the card's title using a font size of 24 and a dark grey color
                          Text(
                            "  Model Name: ${p1?.phones![2].models![index].phoneName.toString()}",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.grey[800],
                            ),
                          ),
                          // Add a space between the title and the text
                          Container(height: 10),
                          // Display the card's text using a font size of 15 and a light grey color
                          Text(
                            "  Price: ${p1?.phones![2].models![index].price.toString()}",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[700],
                            ),
                          ),
                          // Add a row with two buttons spaced apart and aligned to the right side of the card
                          Row(
                            children: <Widget>[
                              // Add a spacer to push the buttons to the right side of the card
                              const Spacer(),
                              // Add a text button labeled "SHARE" with transparent foreground color and an accent color for the text
                              TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.transparent,
                                ),
                                child: const Text(
                                  "SHARE",
                                  style: TextStyle(color: Colors.black),
                                ),
                                onPressed: () {},
                              ),
                              // Add a text button labeled "EXPLORE" with transparent foreground color and an accent color for the text
                              Container(
                                color: Colors.red,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.transparent,
                                  ),
                                  child: const Text(
                                    "Show Full Details",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  onPressed: () {

                                    Get.to(()=> ProductDetailPage(
                                      phoneName: p1!.phones![2].models![index].phoneName.toString(),

                                      rating: p1!.phones![2].models![index].rating.toString(),
                                      comment: p1!.phones![2].models![index].comment.toString(),
                                      price:  p1!.phones![2].models![index].price.toString(),
                                      battery:  p1!.phones![2].models![index].battery.toString(),
                                      fontCamera: p1!.phones![2].models![index].fontcamera.toString(),
                                      backCamera: p1!.phones![2].models![index].backcamera.toString(),
                                      video: p1!.phones![2].models![index].video.toString(),
                                      ram: p1!.phones![2].models![index].ram.toString(),
                                      rom: p1!.phones![2].models![index].rom.toString(),
                                      type: p1!.phones![2].models![index].type.toString(),
                                      sim: p1!.phones![2].models![index].sim.toString(),
                                      chipset: p1!.phones![2].models![index].chipset.toString(),
                                      cardSlot: p1!.phones![2].models![index].cardslot.toString(),
                                      protection: p1!.phones![2].models![index].protection.toString(),
                                      charging: p1!.phones![2].models![index].charging.toString(),
                                      weight: p1!.phones![2].models![index].weight.toString(),
                                      colors: p1!.phones![2].models![index].colors.toString(),
                                      network: p1!.phones![2].models![index].network.toString(),




                                    ));
                                    //Get.to(ProductDetailPage);

                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Add a small space between the card and the next widget
                    Container(height: 5),
                  ],
                ),
              );
            }
        ));
  }




}


