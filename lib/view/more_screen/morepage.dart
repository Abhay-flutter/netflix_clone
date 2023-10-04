import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color/colorconstant.dart';
import 'package:netflix_clone/view/more_screen/widget/manage_profiles_container.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
              ),
              Icon(
                Icons.edit,
                color: ColorConstant.textcolor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Manage Profiles',
                style: TextStyle(fontSize: 20, color: ColorConstant.textcolor),
              ),
            ],
          ),
          ManageProfileContainer(),
        ],
      ),
    );
  }
}
