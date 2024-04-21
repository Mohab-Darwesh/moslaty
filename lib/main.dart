import 'package:flutter/material.dart';
import 'package:moslaty/Screens/HomePage/Home.dart';

void main() {
  runApp(const Moslaty());
}

class Moslaty extends StatelessWidget {
  const Moslaty({super.key});

  @override
  Widget build(BuildContext context) {
    return(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    )

    );
  }

}
