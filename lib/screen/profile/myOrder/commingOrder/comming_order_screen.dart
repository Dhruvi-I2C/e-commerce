import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/common_widgets.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ComingOrder extends StatelessWidget {
  List<Map> image = [
    {"image": alexa},
    {"image": alexa},
  ];


  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyBehavior(),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: image.length,
        padding: EdgeInsets.only(top: 30, bottom: 10),
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(bottom: 15.0),
          child: Container(
            height: 110,
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  height: 105,
                  width: 105,
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  child: Image.asset(image[index]["image"]),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage(add_cart_background),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pullover",
                        style: TextStyle(
                            color: blackLight,
                            fontFamily: "SegoeSemiBold",
                            fontSize: 16),
                      ),
                      Text(
                        "Mango",
                        style: TextStyle(
                            color: grayDark,
                            fontFamily: "SegoeRegular",
                            fontSize: 12),
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 12,
                            unratedColor: grayDark,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, index) =>
                                SvgPicture.asset(star_fill),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          Text(
                            "(3)",
                            style: TextStyle(
                                color: grayDark,
                                fontFamily: "SegoeRegular",
                                fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "USD 295",
                        style: TextStyle(
                          color: appColor,
                          fontSize: 14,
                          fontFamily: "SegoeRegular",
                        ),
                      ),
                    ]),
              ],
            ),
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: grayLight.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5)
                ]),
          ),
        ),
      ),
    );
  }
}
