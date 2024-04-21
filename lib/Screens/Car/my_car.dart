// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:moslaty/Screens/person/M_email.dart';
class My_car extends StatefulWidget {
  const My_car({Key? key}) : super(key: key);

  @override
  State<My_car> createState() => _My_carState();
}

class _My_carState extends State<My_car> {
  @override
  int currentPageIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: const Color(0xEF023047),
          backgroundColor: Colors.white,
          selectedIndex: currentPageIndex,
          destinations:  <Widget>[
            const NavigationDestination(

              selectedIcon: Icon(Icons.home,
                color: Color(0xC8023047),
              ),
              icon: Icon(Icons.home),
              label: 'الرئيسيه',
            ),
            NavigationDestination(

              icon: Image.asset("Images/Car.png",
                color:const Color(0xC8023047),
                height: 24,
                width: 24,
              ),
              label: 'بيانات السياره',
            ),
            NavigationDestination(
              icon: Image.asset("Images/Stat.png",

                height: 24,
                width: 24,
              ),
              label: 'الاحصائات',
            ),
          ],
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                decoration: const BoxDecoration(
                    color: Color(0xff8ecae6),
                    borderRadius: BorderRadius.all(Radius.circular(30))

                ),

                padding: const EdgeInsets.all(10),
                height: 130,
                alignment: Alignment.center ,
                width: 7200,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap:(){

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context){
                              return const My_email();
                            }));
                      },
                      child: const Icon(  Icons.account_circle,
                        size: 44,
                        color: Color(0xFA023047),
                      ),
                    ),
                    Image.asset("Images/AppIcon.jpg",
                      width: 72,
                      height: 72,
                    ),

                    IconButton(onPressed: (){Navigator.pop(context);},
                      icon: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(300)),
                          color: Color(0xD8023047),
                        ),
                        height: 60,
                        width: 60,

                        child: Image.asset("Images/img_1.png",
                          width: 46,
                          height: 46,

                        ),
                      ),
                    ),

                  ],
                )
            ),
         const   SizedBox(height: 25,),
            const Center(
              child: Text("سيارتي",
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black
              ),
              ),
              
            ),
            const Text("  معلومات المركبة  ",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              fontFamily: "Inter",
              color: Color(-16767142)
            ),
            ),
             const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("25441",
                    style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    fontFamily: "Inter",
                    color: Color(-16767142))),
                SizedBox(width: 50,),
                Text("رقم السياره",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        fontFamily: "Inter",
                        color: Color(-16767142))),


              ],
            ),
            const SizedBox(height: 15,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [


                Text(" ج ب 441",
                    style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    fontFamily: "Inter",
                    color: Color(-16767142))),
                SizedBox(width: 50,),
                Text("رقم اللوحه",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: "Inter",
                        color: Color(-16767142))),

              ],
            ),
            const SizedBox(height: 15,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [



                Text("ازرق",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: "Inter",
                        color: Color(-16767142))),
                SizedBox(width: 80,),
                Text("اللون",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: "Inter",
                        color: Color(-16767142))

                ),
              ],
            ),
            const SizedBox(height: 15,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [


                Text("12",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: "Inter",
                        color: Color(-16767142))
                ),
                SizedBox(width: 50,),
                Text("عدد الركاب",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: "Inter",
                        color: Color(-16767142))
                ),
              ],
            ),
            const SizedBox(height: 15,),
            const Row(
              mainAxisAlignment:MainAxisAlignment.end,
              children: [


                Text("2022",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: "Inter",
                        color: Color(-16767142))),
                SizedBox(width: 50,),
                Text("سنة الصنع",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: "Inter",
                        color: Color(-16767142))),
              ],
            ),
            const SizedBox(height: 15,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [


                Text("1H2B36G2N5U8I8O9S4W",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: "Inter",
                        color: Color(-16767142))),
                SizedBox(width: 50,),
                Text("رقم الشاسيه",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: "Inter",
                        color: Color(-16767142))
                ),
              ],
            ),
            const SizedBox(height: 50,),
            Center(
              child: Image.asset("Images/img_5.png",
              height: 44,
                width: 108,
              ),
            )


          ],
        )

    );
  }
}
