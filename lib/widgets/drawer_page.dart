import 'package:flutter/material.dart';
import '../second_page.dart';

const headImg =
    'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1593082047,1701245442&fm=15&gp=0.jpg';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: Stack(
        children: <Widget>[
          ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  backgroundBlendMode: BlendMode.overlay,
                  image: DecorationImage(
                    image: NetworkImage(
                      headImg,
                    ),
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(.7),
                      BlendMode.srcOver,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 80,
                          height: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: FadeInImage.assetNetwork(
                              placeholder: headImg,
                              image: headImg,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        height: 80,
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 32,
                              child: Text(
                                '前端开荒牛',
                                strutStyle: StrutStyle(
                                  forceStrutHeight: true,
                                  height: 2,
                                ),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Container(
                              height: 48,
                              child: Text(
                                '少年智则国智，少年富则国富，少年强则国强，少年自由则国自由',
                                strutStyle: StrutStyle(
                                  forceStrutHeight: true,
                                  height: 1.2,
                                ),
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w200,
                                ),
                                softWrap: true,
                                maxLines: 3,
                                textAlign: TextAlign.justify,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  // showAlertDialog(context, '设置');
                },
              ),
              // Align(
              //   heightFactor: 1,
              //   alignment: AlignmentDirectional.bottomCenter,
              //   child: Container(
              //     // width: 300,
              //     // height: 48,
              //     height: 48,
              //     decoration: BoxDecoration(
              //       color: Colors.red,
              //     ),
              //     child: Text('测试232'),
              //   ),
              // ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: 320,
              alignment: AlignmentDirectional.center,
              height: 64,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  ),
              child: Text(
                '早朝',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.2),
                  fontSize: 13,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
