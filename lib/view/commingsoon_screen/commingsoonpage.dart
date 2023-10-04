import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color/colorconstant.dart';
import 'package:netflix_clone/utils/image/imageconstant.dart';
import 'package:netflix_clone/utils/names/names.dart';
import 'package:netflix_clone/view/commingsoon_screen/widget/commingsooncontainer.dart';
import 'package:netflix_clone/view/commingsoon_screen/widget/new_arrival_container.dart';

class CommingSoonPage extends StatefulWidget {
  const CommingSoonPage({super.key});

  @override
  State<CommingSoonPage> createState() => _CommingSoonPageState();
}

class _CommingSoonPageState extends State<CommingSoonPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ImageConstant.notification,
            SizedBox(
              width: 10,
            ),
            Text(
              'Notifications',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: ColorConstant.textcolor),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        NewArrivalContainer(),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) => CommingSoonContainer(
              images: ImageConstant.comingsoonmovies[index],
              names: Names.comingsoonmovies[index],
              VOLandRELEASE: Names.comingsoonvolumeandreleasedate[index],
              movieshortdetails: Names.shortdetailsofmovies[index],
            ),
          ),
        ),
      ],
    );
  }
}
