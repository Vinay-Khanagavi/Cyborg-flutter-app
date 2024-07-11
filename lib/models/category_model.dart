import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryModel{
  String name;
  String iconpath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconpath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> category = [];
    
    category.add(
      CategoryModel(
        name: "Level-1", 
        iconpath: "assets/gif/gif_1.gif", 
        boxColor: Color(0xff92A3FD)
      )
    );
    category.add(
      CategoryModel(
        name: "level-2",
        iconpath: "assets/gif/gif_2.gif",
        boxColor: Color(0xffF5A623)
        )
        );
        category.add(
          CategoryModel(
            name: "level-3",
            iconpath: "assets/gif/gif_3.gif",
            boxColor: Color(0xffF5A623)
            )
        );
        category.add(
          CategoryModel(
            name: "level-4",
            iconpath: "assets/gif/gif_4.gif",
            boxColor: Color(0xffF5A623)
            )
        );
  }

}