import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color/colorconstant.dart';
import 'package:netflix_clone/utils/image/imageconstant.dart';
import 'package:netflix_clone/utils/names/names.dart';
import 'package:netflix_clone/view/search_screen/widget/searchcontainer.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: double.infinity,
          color: ColorConstant.darksecondcolor,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search, color: ColorConstant.textcolor),
                Text(
                  'Search for a show, movie, genre, e.t.c',
                  style:
                      TextStyle(fontSize: 15, color: ColorConstant.textcolor),
                ),
                Icon(Icons.mic, color: ColorConstant.textcolor)
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              'Top Searches',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorConstant.textcolor,
                  fontSize: 30),
            )
          ],
        ),
        Expanded(
          child: ListView.builder(
              itemCount: ImageConstant.movieavatar.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return SearchContainer(
                  names: Names.topSearch[index],
                  images: ImageConstant.movieavatar[index],
                );
              }),
        ),
      ],
    );
  }
}
