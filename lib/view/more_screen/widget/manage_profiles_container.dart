import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color/colorconstant.dart';

class ManageProfileContainer extends StatefulWidget {
  const ManageProfileContainer({super.key});

  @override
  State<ManageProfileContainer> createState() => _ManageProfileContainerState();
}

class _ManageProfileContainerState extends State<ManageProfileContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          color: ColorConstant.darksecondcolor,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.message_rounded,
                      color: ColorConstant.textcolor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Tell friends about Netflix.',
                      style: TextStyle(
                          color: ColorConstant.textcolor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 370,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,',
                    style: TextStyle(
                      color: ColorConstant.textcolor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: 370,
                    child: Text(
                      'Terms & Conditions',
                      style: TextStyle(
                        color: ColorConstant.textcolor,
                      ),
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }
}
