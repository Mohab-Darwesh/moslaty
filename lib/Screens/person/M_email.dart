import 'package:flutter/material.dart';
import 'package:moslaty/Screens/FAQs/FAQs.dart';
import 'package:moslaty/Screens/kabten/kabten.dart';

import '../Car/my_car.dart';
import '../abuot us/Abuot_Us.dart';
class My_email extends StatefulWidget {
  const My_email({Key? key}) : super(key: key);

  @override
  State<My_email> createState() => _My_emailState();
}
int currentPageIndex=0;

class _My_emailState extends State<My_email> {
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
        crossAxisAlignment: CrossAxisAlignment.center,
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
          const SizedBox(height: 15,),
          Image.asset("Images/img_2.png",
          height: 96,
            width: 96,
          ),
          const SizedBox(height: 30,),
          const Text("أحمد عادل",style: TextStyle(
            color: Color(0xFA023047),
            fontSize: 25,
            fontWeight: FontWeight.w900,
            fontFamily: 'Inter',
          ),),
          const Text("تاريخ تسجيل الدخول: 13/12/2023",
          style: TextStyle(
            color: Color(0xFA023047),
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inter',
          ),
          ),
          const Text("رقم الرخصة: 222",
            style: TextStyle(
              color: Color(0xFA023047),
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter',
            ),
          ),
          const Text("رقم الكابتن: 222",
            style: TextStyle(
              color: Color(0xFA023047),
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter',
            ),
          ),

          const Text("الرقم القومى: 29502171502905",
            style: TextStyle(
              color: Color(0xFA023047),
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter',
            ),
          ),
            Row(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              GestureDetector(
                onTap: (){},
                child: const Text(" تغير رقم الهاتف",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,

                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              const Text("  رقم الهاتف   ",
                style: TextStyle(
                  color: Color(0xFA023047),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                ),
              ),

            ],
          ),
          const Text("0100002652",
            style: TextStyle(
              color: Color(0xFA023047),
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter',
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              GestureDetector(
                onTap: (){},
                child: const Text(" تغير كلمة المرور",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,

                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              const Text("  كلمة المرور   ",
                style: TextStyle(
                  color: Color(0xFA023047),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                ),
              ),

            ],
          ),
          const Text("###########",
            style: TextStyle(
              color: Color(0xFA023047),
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter',
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              GestureDetector(
                onTap: (){},
                child: const Text(" تغير محل الاقامه",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,

                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              const Text("  محل الاقامه   ",
                style: TextStyle(
                  color: Color(0xFA023047),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                ),
              ),

            ],
          ),
          const Text("الحصري",
            style: TextStyle(
              color: Color(0xFA023047),
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter',
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return const My_car();
                      }));
                },
                child: Image.asset("Images/img_4.png",
                width: 80,
                  height: 56,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return const Kabten();
                      }));
                },
                child: Image.asset("Images/img_3.png",
                  width: 80,
                  height: 56,
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const About_us();
              }));
            },
            child: const Text(" Aduot Us",
              style: TextStyle(
                color: Color(0xFA023047),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter',
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const FAQs();
              }));
            },
            child: const Text(" FAQs",
              style: TextStyle(
                color: Color(0xFA023047),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter',
              ),
            ),
          ),





        ],
      )

    );
  }
}
