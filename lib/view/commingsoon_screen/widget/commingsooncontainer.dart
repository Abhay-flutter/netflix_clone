import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color/colorconstant.dart';
import 'package:netflix_clone/utils/image/imageconstant.dart';

class CommingSoonContainer extends StatelessWidget {
  const CommingSoonContainer({
    super.key,
    required this.images,
    required this.names,
    required this.VOLandRELEASE,
    required this.movieshortdetails,
  });
  final String images;
  final String names;
  final String VOLandRELEASE;
  final String movieshortdetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: ColorConstant.textcolor,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(images),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 50,
                width: 100,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: ColorConstant.textcolor,
                    ),
                    Text(
                      'Remind Me',
                      style: TextStyle(
                          fontSize: 15, color: ColorConstant.textcolor),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: ColorConstant.textcolor,
                    ),
                    Text(
                      'Share',
                      style: TextStyle(
                          fontSize: 15, color: ColorConstant.textcolor),
                    )
                  ],
                )
              ],
            ),
            Text(
              VOLandRELEASE,
              style: TextStyle(color: ColorConstant.textcolor),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(),
              child: Text(
                names,
                style: TextStyle(fontSize: 30, color: ColorConstant.textcolor),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                movieshortdetails,
                style: TextStyle(color: ColorConstant.textcolor),
              ),
            ),
            SizedBox(
              height: 48,
            ),
            ImageConstant.Commingsoon,
          ],
        ),
      ),
    );
  }
}
