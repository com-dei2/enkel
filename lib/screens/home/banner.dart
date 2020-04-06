import 'dart:convert';
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../../pages/webview.dart';
import '../../model/banner.dart';

// import '../../actions/home_banner.dart';
Dio dio = new Dio();

class HomeBanner extends StatefulWidget {
  @override
  _HomeBanner createState() => _HomeBanner();
}

class _HomeBanner extends State<HomeBanner> {
  void showAlertDialog(BuildContext context, content) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(content),
          title: Center(
              child: Text(
            '标题',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          )),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('确定')),
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('取消')),
          ],
        );
      },
    );
  }

  List bannerList = [];

  @override
  initState() {
    super.initState();

    getHomeBanner().then((val) {
      setState(() {
        var bl = ModelBanner.fromJson(val);
        bannerList = bl.data.category;
      });
    });
  }

  Future getHomeBanner() async {
    try {
      Response response;

      response =
          await dio.get("http://192.168.0.101:3000/enkel/banner/getList");
      // response = await dio.get("http://talkapi.dei2.com/enkel/banner/getList");
      return response.data;
    } catch (e) {
      return {};
    }
  }

  @override
  Widget build(BuildContext context) {
    // final bannerSlider = (bannerList.length > 0)
    //     ? CarouselSlider(
    //         height: 160.0,
    //         aspectRatio: 640 / 320,
    //         viewportFraction: 0.8,
    //         reverse: false,
    //         autoPlay: true,
    //         autoPlayInterval: Duration(seconds: 3),
    //         autoPlayAnimationDuration: Duration(milliseconds: 800),
    //         autoPlayCurve: Curves.fastOutSlowIn,
    //         enlargeCenterPage: true,
    // items: bannerList.map((item) {
    //   return Builder(
    //     builder: (BuildContext context) {
    //       return GestureDetector(
    //         onTap: () {
    //           Navigator.of(context).push(MaterialPageRoute(
    //               builder: (context) => Webview(item)));
    //         },
    //         child: Container(
    //           width: MediaQuery.of(context).size.width,
    //           height: 160,
    //           margin: EdgeInsets.symmetric(horizontal: 5.0),
    //           child: ClipRRect(
    //             borderRadius: BorderRadius.circular(4),
    //             child: Image(
    //               image: NetworkImage(item.cover),
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //         ),
    //       );
    //     },
    //   );
    // }).toList(),
    //       )
    //     : CarouselSlider(
    //         height: 160.0,
    //         aspectRatio: 640 / 320,
    //         viewportFraction: 0.8,
    //         reverse: false,
    //         autoPlay: true,
    //         autoPlayInterval: Duration(seconds: 3),
    //         autoPlayAnimationDuration: Duration(milliseconds: 800),
    //         autoPlayCurve: Curves.fastOutSlowIn,
    //         enlargeCenterPage: true,
    //         items: <Widget>[],
    //       );

    SwiperController bannerSliderController = new SwiperController();

    final bannerSlider = new Swiper(
      itemCount: bannerList.length,
      outer: false,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Webview(bannerList[index])));
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 160,
            // margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image(
                image: NetworkImage(bannerList[index].cover),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
      autoplay: true,
      loop: true,
      viewportFraction: 0.8,
      scale: 0.9,
      itemWidth: MediaQuery.of(context).size.width,
      itemHeight: 160.0,
      // layout: SwiperLayout.TINDER,
      controller: bannerSliderController,
    );

    return new Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 160,
            child: bannerSlider,
          ),
          Positioned(
            top: 0,
            left: 0,
            width: 40,
            height: 160,
            child: GestureDetector(
              onTap: () {
                print('>>>>>>>>>>>>>>>>prev');
                bannerSliderController.previous();
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            width: 40,
            height: 160,
            child: GestureDetector(
              onTap: () {
                // bannerSlider.nextPage(
                //     duration: Duration(milliseconds: 300),
                //     curve: Curves.linear);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
