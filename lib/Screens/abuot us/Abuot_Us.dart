import 'package:flutter/material.dart';
import 'package:moslaty/Screens/person/M_email.dart';
class About_us extends StatefulWidget {
  const About_us({Key? key}) : super(key: key);

  @override
  State<About_us> createState() => _About_usState();
}

class _About_usState extends State<About_us> {
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
                color: const Color(0xC8023047),
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

          ],
        )

    );
  }
}
