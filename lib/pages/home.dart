import 'package:cyborg/models/category_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget{
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];

  void _getCategories(){
    categories = CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
    backgroundColor: Colors.white,
    appBar: appBar(),
    body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchField(),
          SizedBox(height: 40,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Category",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),

              SizedBox(height: 15,),

              Container(
                
                height: 250,
                color: Colors.red,
                child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index){
                    return Container(
                      decoration: BoxDecoration(
                        color: categories[index].boxColor
                      ),
                    );
                    
                  }
                  
                  ),
              ),
            ],
          )
        ],
      )

    );
  }

  Container _searchField() {
    return Container(
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
              hintText: 'Search Game',
              hintStyle: TextStyle(
                color: Color(0xffDDDADA),
                fontSize: 14,
              ),
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(3),
                
                child: SvgPicture.asset(
                  'assets/icons/search_icon.svg',
                  width: 3,
                  height: 3,
                  ),
              ),
              border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none
              )
            ),
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