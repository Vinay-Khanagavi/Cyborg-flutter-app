import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryModel{
  String name;
  String iconpath;
  Color boxColor;
  String link;

  CategoryModel({
    required this.name,
    required this.iconpath,
    required this.boxColor,
    required this.link,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];
    
    categories.add(
      CategoryModel(
        name: 'Level 1', 
        iconpath: 'assets/gif/gif_1.gif', 
        boxColor: Color(0xff92A3FD),
        link: 'https://vinay-khanagavi.github.io/CyberFit.github.io/main/level_1/level_1.html'
      )
    );
    categories.add(
      CategoryModel(
        name: 'level 2',
        iconpath: 'assets/gif/gif_2.gif',
        boxColor: Color(0xffF5A623),
        link: 'https://vinay-khanagavi.github.io/CyberFit.github.io/main/level_1/level_1.html'

        )
        );
        categories.add(
          CategoryModel(
            name: 'level 3',
            iconpath: 'assets/gif/gif_3.gif',
            boxColor: Color(0xffC58BF2),
            link: 'https://vinay-khanagavi.github.io/CyberFit.github.io/main/level_1/level_1.html'

            )
        );
        categories.add(
          CategoryModel(
            name: 'level 4',
            iconpath: 'assets/gif/gif_4.gif',
            boxColor: Color(0xff92A3FD),
            link: 'https://vinay-khanagavi.github.io/CyberFit.github.io/main/level_1/level_1.html'
            )
        );


    return categories;
  }

}