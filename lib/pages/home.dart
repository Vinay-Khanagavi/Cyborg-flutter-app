import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: appBar(),
    body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 20, right:10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff101617).withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0
                )
              ]
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,fillColor: Colors.white,
                contentPadding: EdgeInsets.all(15),
                // prefixIcon: Padding(
                //   padding: const EdgeInsets.all(2),
                //   child: SvgPicture.asset('assets/icons/search_icon.svg'),
                // ),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
                )
              ),
            )
          ),
        ],
      )
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Cyborg',
        style: TextStyle(
          
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold
          ),
        ), 
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,

        leading: GestureDetector(
          onTap: (){
            
          },
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            //SVG material initialized here
            child:SvgPicture.asset(
              'assets/icons/arrow_back.svg',
              height: 20,
              width: 20,
              color: Colors.black,
              ),
            
            decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadiusDirectional.circular(10)
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: (){
              
            },
            child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,

            width: 37,
            //SVG material initialized here
            child:SvgPicture.asset(
              'assets/icons/dots.svg',
              height: 20,
              width: 20,
              color: Colors.black,
              ),
            decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadiusDirectional.circular(10)
            ),
          ),
          ),
        ],
    );
  }

}