// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:moslaty/Widgets/CustomButon.dart';


import '../../Widgets/custom_textField.dart';
import '../person/M_email.dart';
class S_HomePage extends StatefulWidget {
  const S_HomePage({Key? key}) : super(key: key);

  @override
  State<S_HomePage> createState() => _S_HomePageState();
}

class _S_HomePageState extends State<S_HomePage> {
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
                height: 24,
                width: 24,
                color: const Color(0xC8023047),
              ),
              label: 'بيانات السياره',
            ),
            NavigationDestination(

              icon: Image.asset("Images/Stat.png",
                height: 24,
                width: 24,
              ),
              label: 'الأرباح',
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
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
    child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,

    children:[
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

const SizedBox(
  height: 38,
  width: 186,
  child:   TextField(

textAlign:TextAlign.end,
    decoration: InputDecoration(
      isCollapsed: true,
prefixIcon: Icon(Icons.search),
      hintText: "اين وجهتك"
    ),
  ),
),
      Image.asset('Images/AppIcon.jpg'

          ,

          height: 72,

          width: 72,

      ),
    ]
    ),
    ),
                const SizedBox(height: 10,),
                const Text("مرحبا بك أحمد عادل",
                style: TextStyle(
                  color: Color(0xFA023047),
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Inter',
                ),
                ),
                const SizedBox(height: 10,),
                 Card(



                  child: Container(

                    decoration: const BoxDecoration(
                        color: Color(0xFF8ECAE6),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    width: 380,
                    child: const ListTile(
                      subtitle: Text("امامك  6 سيارات"),
trailing: Text("دورك الحالي"),
                      title: Text("الدور السابع"),
                    ),
                  ),
                ),
          const SizedBox(height: 15,),

               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                 children: [

                   Container(
                   height: 76,
                   width: 108,
                   decoration: const BoxDecoration(
                       color: Color(0xFF8ECAE6),
                       borderRadius: BorderRadius.all(Radius.circular(20))
                   ),
                     child: const Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Text("خط",
                         style: TextStyle(
                           fontSize: 20,
                           color:  Color(0xFA023047),
                         ),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("ابنوب-",
                             style: TextStyle(
                               color:  Color(0xFA023047)
                             ),
                             ),
                             Text("القاهره",
                             style: TextStyle(
                               color:  Color(0xFA023047)
                             ),
                             )
                           ],
                         )
                       ],
                     ),
                 ),

                   Container(
                     height: 76,
                     width: 124,
                     decoration: const BoxDecoration(
                         color: Color(0xFF8ECAE6),
                         borderRadius: BorderRadius.all(Radius.circular(20))
                     ),
                     child: const Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      SizedBox(height: 3,),
    Text("مدة رحلتك الحاليه",
    style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color:  Color(0xFA023047)
    ),
    ),
    Text("35 دقيقه تقريبا",
    style: TextStyle(
      color:  Color(0xFA023047)
    ),
    )
    ],
    ),
                   ),

                 ],
               ),
             const   SizedBox(height: 15,),
                Image.asset("Images/Mab.png"),
                const SizedBox(height: 20,),
                CustomButon(
                  width: 206,
                  hight: 44,
                  color:const Color(0xFA023047) ,
                  colorText:Colors.white ,
                  text:"أبدا" ,

                )
    ]),
        )

    );
  }
}
