import 'dart:async';

import 'package:flutter/material.dart';
import '../../second_page.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import './banner.dart';

class TabHome extends StatelessWidget {
  final GlobalKey bottomNavigationKey;
  TabHome(this.bottomNavigationKey);

  List<Map> items = [
    {
      "id": "99397605",
      "title": "每个人都需要一种治愈",
      "cover":
          "https://ossimg.xinli001.com/20200403/8ec2eade17765393ba82748fa76cc177.jpg!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397605",
      "speak": "姚小明",
      "favnum": "21",
      "viewnum": "1919",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397605",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "1357",
        "title": "姚小明",
        "cover":
            "https://ossimg.xinli001.com/20181129/2d7e77c2545091444ea166f4af7dc7a8.jpg",
        "fmnum": "120",
        "user_id": "1002126021",
        "viewnum": "1054177",
        "content": "他的节目里有你的影子！",
        "favnum": "656",
        "user": {
          "id": "1002126021",
          "username": "13693512633",
          "nickname": "致情感",
          "phone": "13693512633",
          "avatar":
              "https://ossimg.xinli001.com/20200309/09021f94224ccac6e2c43bbb9f8270c4.jpg!80",
          "is_active": "1"
        }
      },
      "object_id": "99397605"
    },
    {
      "id": "99397596",
      "title": "人啊，除了健康，什么都是浮云！",
      "cover":
          "https://ossimg.xinli001.com/20200401/50ef82b0822f9659974435a21a7e7e17.jpg!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397596",
      "speak": "杨杨",
      "favnum": "1",
      "viewnum": "834",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397596",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "1346",
        "title": "杨杨",
        "cover":
            "https://ossimg.xinli001.com/20181026/dc3daa8e3734fa9fb77abca13dfdf4bc.jpg",
        "fmnum": "231",
        "user_id": "1005964543",
        "viewnum": "2816709",
        "content":
            "杨杨，电台主持人，多家自媒体签约主播，怀揣一颗简单纯粹的初心，与你分享一切美好，希望在『向日葵的故事』遇见你！ 微信公众号：向日葵的故事（ID：nihaoxrk）微信：duduradio92。",
        "favnum": "1899",
        "user": {
          "id": "1005964543",
          "username": "xinli_5bd03355c0cf6",
          "nickname": "杨杨",
          "phone": "18253792615",
          "avatar":
              "https://ossimg.xinli001.com/20181026/ed088de64446696242d4480853515652.jpg!80",
          "is_active": "1"
        }
      },
      "object_id": "99397596"
    },
    {
      "id": "99397553",
      "title": "06 | 如何增强写作思维逻辑？",
      "cover":
          "https://ossimg.xinli001.com/20200325/8519cdd25d8c7d477a7eae8f3410a01a.jpg!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397553",
      "speak": "人生答疑馆",
      "favnum": "4",
      "viewnum": "393",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397553",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "1383",
        "title": "人生答疑馆",
        "cover":
            "https://ossimg.xinli001.com/20200320/c3055f9fed64c592b5eae9eddf9ffede.jpg",
        "fmnum": "11",
        "user_id": "1006099089",
        "viewnum": "13407",
        "content": "你的心理学互助·成长社区。",
        "favnum": "36",
        "user": {
          "id": "1006099089",
          "username": "xinliqa@xinli001.com",
          "nickname": "人生答疑馆",
          "phone": "13800000001",
          "avatar":
              "https://ossimg.xinli001.com/20181203/6eed00a18feb7e3254ca9774391531b5.jpg!80",
          "is_active": "1"
        }
      },
      "object_id": "99397553"
    },
    {
      "id": "99397589",
      "title": "最好的朋友，突然不理我了 | 当友情遭遇冷暴力，该怎么办",
      "cover":
          "https://ossimg.xinli001.com/20200331/f1ef86374698c354720b57e4ff3a6641.png!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397589",
      "speak": "秋木",
      "favnum": "10",
      "viewnum": "826",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397589",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "984",
        "title": "秋木",
        "cover": "https://image.xinli001.com//20141207/190726/715292.jpg",
        "fmnum": "58",
        "user_id": "13366777",
        "viewnum": "2462598",
        "content": "秋木叔叔讲故事，电台小主持，医院小会计QQ594329055\r\n微信njqiumu",
        "favnum": "1434",
        "user": {
          "id": "13366777",
          "username": "594329055@qq.com",
          "nickname": "NJ秋木",
          "phone": "15862298358",
          "avatar": "https://image.xinli001.com//20141207/190726/715292.jpg!80",
          "is_active": "1"
        }
      },
      "object_id": "99397589"
    },
    {
      "id": "99397603",
      "title": "四月：做最好的自己，遇见最好的生活",
      "cover":
          "https://ossimg.xinli001.com/20200402/41dc61f4eb4b6f81313811b60e05e0a5.jpg!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397603",
      "speak": "郝好",
      "favnum": "45",
      "viewnum": "3869",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397603",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "1278",
        "title": "郝好",
        "cover":
            "https://ossimg.xinli001.com/20180117/efbe274442e85a0ef274589f3f66deda.jpg",
        "fmnum": "61",
        "user_id": "4876479",
        "viewnum": "1268856",
        "content": "好好说话，用声音拥抱取暖",
        "favnum": "1098",
        "user": {
          "id": "4876479",
          "username": "1689169636@qq.com",
          "nickname": "郝好",
          "phone": "17603977721",
          "avatar":
              "https://ossimg.xinli001.com/20180117/f8e71b0314c2fea5c457c8e21f8ff42b.png!80",
          "is_active": "1"
        }
      },
      "object_id": "99397603"
    },
    {
      "id": "99397604",
      "title": "破解自闭症偏见：天才亦是凡人",
      "cover":
          "https://ossimg.xinli001.com/20200403/b723ce8f6e069b692d4412f06397e3b5.jpg!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397604",
      "speak": "无畏酱",
      "favnum": "8",
      "viewnum": "1692",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397604",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "1279",
        "title": "无畏酱",
        "cover":
            "https://ossimg.xinli001.com/20180615/6804f2ee2fac0d72ec57330d70f7787c.jpg",
        "fmnum": "18",
        "user_id": "1005181523",
        "viewnum": "346002",
        "content": "怀着真心奋勇向前吧，毕竟今生和此刻都只有一次。",
        "favnum": "450",
        "user": {
          "id": "1005181523",
          "username": "xinli_5a56bc6b2ad20",
          "nickname": "无畏酱",
          "phone": "18811302060",
          "avatar":
              "https://ossimg.xinli001.com/20180118/b9ff69bc3d50f7971f3076cbb338bb6e.png!80",
          "is_active": "1"
        }
      },
      "object_id": "99397604"
    },
    {
      "id": "99397601",
      "title": "3 父母的过错：童年时爱的缺失，会导致缺乏安全感",
      "cover":
          "https://ossimg.xinli001.com/20200402/da245a0c661e51b6c055edaffed332e3.png!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397601",
      "speak": "君君",
      "favnum": "24",
      "viewnum": "2309",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397601",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "1005",
        "title": "君君",
        "cover":
            "https://ossimg.xinli001.com/20170403/cb6230a9d7c567488c5b92cd11ba8785.png",
        "fmnum": "78",
        "user_id": "271342362",
        "viewnum": "6551875",
        "content": "微信公众号:  梦与君同",
        "favnum": "11723",
        "user": {
          "id": "271342362",
          "username": "120495757@qq.com",
          "nickname": "listen君君",
          "phone": "15866118206",
          "avatar":
              "https://ossimg.xinli001.com/20170403/cb6230a9d7c567488c5b92cd11ba8785.png!80",
          "is_active": "1"
        }
      },
      "object_id": "99397601"
    },
    {
      "id": "99397552",
      "title": "05 | 如何提高文章影响力？",
      "cover":
          "https://ossimg.xinli001.com/20200325/2ccd7b492bb6d52f2e7077bc6a12abb7.jpg!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397552",
      "speak": "人生答疑馆",
      "favnum": "5",
      "viewnum": "671",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397552",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "1383",
        "title": "人生答疑馆",
        "cover":
            "https://ossimg.xinli001.com/20200320/c3055f9fed64c592b5eae9eddf9ffede.jpg",
        "fmnum": "11",
        "user_id": "1006099089",
        "viewnum": "13407",
        "content": "你的心理学互助·成长社区。",
        "favnum": "36",
        "user": {
          "id": "1006099089",
          "username": "xinliqa@xinli001.com",
          "nickname": "人生答疑馆",
          "phone": "13800000001",
          "avatar":
              "https://ossimg.xinli001.com/20181203/6eed00a18feb7e3254ca9774391531b5.jpg!80",
          "is_active": "1"
        }
      },
      "object_id": "99397552"
    },
    {
      "id": "99397597",
      "title": "你配得上世间所有的美好",
      "cover":
          "https://ossimg.xinli001.com/20200402/88d27c7c52120ecd85c429c78e37162e.jpg!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397597",
      "speak": "安东尼",
      "favnum": "100",
      "viewnum": "9619",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397597",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "1380",
        "title": "安东尼",
        "cover":
            "https://ossimg.xinli001.com/20190710/b621f5048dff185b4fde4a9cf9293838.jpg",
        "fmnum": "24",
        "user_id": "271531044",
        "viewnum": "360848",
        "content": "愿用我的声音，温暖你的耳朵",
        "favnum": "1048",
        "user": {
          "id": "271531044",
          "username": "xinli_14345512824839",
          "nickname": "安东尼12138",
          "phone": "18585412506",
          "avatar":
              "https://ossimg.xinli001.com/20190704/9da30a592f56c5ae726fc43adf085d58.jpg!80",
          "is_active": "1"
        }
      },
      "object_id": "99397597"
    },
    {
      "id": "99397599",
      "title": "幸福大概就是找到了一个愿意听你说话的人",
      "cover":
          "https://ossimg.xinli001.com/20200402/298f456a42c12c19db150f553e72609f.jpg!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397599",
      "speak": "大宸",
      "favnum": "56",
      "viewnum": "6256",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397599",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "1299",
        "title": "大宸",
        "cover":
            "https://ossimg.xinli001.com/20180510/2a52ce20e4d047eed8505fd597623307.jpg",
        "fmnum": "225",
        "user_id": "1001986536",
        "viewnum": "4317596",
        "content":
            "文艺清新，温情暖嗓。\r\n在会计这条路上越走越远的朗读爱好者，\r\n汨罗人民广播电台特约主持。\r\n拥抱大宸，拥抱温暖的声音。",
        "favnum": "3283",
        "user": {
          "id": "1001986536",
          "username": "15197139088",
          "nickname": "大宸",
          "phone": "15197139088",
          "avatar":
              "https://ossimg.xinli001.com/20190622/255dc0cb035ed7ea7e2f77f2ebb1bf96.jpg!80",
          "is_active": "1"
        }
      },
      "object_id": "99397599"
    },
    {
      "id": "99397598",
      "title": "千万别对喜欢的人说，我没事",
      "cover":
          "https://ossimg.xinli001.com/20200402/312514056bc26638572ef206b72bcf6b.jpg!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397598",
      "speak": "白心",
      "favnum": "41",
      "viewnum": "5682",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397598",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "1349",
        "title": "白心",
        "cover":
            "https://ossimg.xinli001.com/20181108/4efe8ba1493744b6823ed4958d445004.jpg",
        "fmnum": "68",
        "user_id": "1006020817",
        "viewnum": "714296",
        "content": "嗨，你也没睡吗？那就来听听你的故事吧……",
        "favnum": "1069",
        "user": {
          "id": "1006020817",
          "username": "xinli_5be3b36c1786b",
          "nickname": "主播白心",
          "phone": "18334739609",
          "avatar":
              "https://ossimg.xinli001.com/20181108/750cb61b9ce53e64c6a248b991e222df.jpg!80",
          "is_active": "1"
        }
      },
      "object_id": "99397598"
    },
    {
      "id": "99397545",
      "title": "04 | 如何突破写作瓶颈期？",
      "cover":
          "https://ossimg.xinli001.com/20200324/ca5140840b87249f0197b945d757781c.jpg!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397545",
      "speak": "人生答疑馆",
      "favnum": "4",
      "viewnum": "856",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397545",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "1383",
        "title": "人生答疑馆",
        "cover":
            "https://ossimg.xinli001.com/20200320/c3055f9fed64c592b5eae9eddf9ffede.jpg",
        "fmnum": "11",
        "user_id": "1006099089",
        "viewnum": "13407",
        "content": "你的心理学互助·成长社区。",
        "favnum": "36",
        "user": {
          "id": "1006099089",
          "username": "xinliqa@xinli001.com",
          "nickname": "人生答疑馆",
          "phone": "13800000001",
          "avatar":
              "https://ossimg.xinli001.com/20181203/6eed00a18feb7e3254ca9774391531b5.jpg!80",
          "is_active": "1"
        }
      },
      "object_id": "99397545"
    },
    {
      "id": "99397588",
      "title": "《安家》大结局：没有人能掌握你的人生，除了你自己",
      "cover":
          "https://ossimg.xinli001.com/20200331/33dd57238a44c432769c5cbab71147a5.jpg!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397588",
      "speak": "秋木",
      "favnum": "43",
      "viewnum": "7009",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397588",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "984",
        "title": "秋木",
        "cover": "https://image.xinli001.com//20141207/190726/715292.jpg",
        "fmnum": "58",
        "user_id": "13366777",
        "viewnum": "2462598",
        "content": "秋木叔叔讲故事，电台小主持，医院小会计QQ594329055\r\n微信njqiumu",
        "favnum": "1434",
        "user": {
          "id": "13366777",
          "username": "594329055@qq.com",
          "nickname": "NJ秋木",
          "phone": "15862298358",
          "avatar": "https://image.xinli001.com//20141207/190726/715292.jpg!80",
          "is_active": "1"
        }
      },
      "object_id": "99397588"
    },
    {
      "id": "99397592",
      "title": "就当海水未蓝，梦长不过明天",
      "cover":
          "https://ossimg.xinli001.com/20200401/87cc794b476a0355c35258fa29e9972a.jpg!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397592",
      "speak": "姚小明",
      "favnum": "37",
      "viewnum": "5091",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397592",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "1357",
        "title": "姚小明",
        "cover":
            "https://ossimg.xinli001.com/20181129/2d7e77c2545091444ea166f4af7dc7a8.jpg",
        "fmnum": "120",
        "user_id": "1002126021",
        "viewnum": "1054177",
        "content": "他的节目里有你的影子！",
        "favnum": "656",
        "user": {
          "id": "1002126021",
          "username": "13693512633",
          "nickname": "致情感",
          "phone": "13693512633",
          "avatar":
              "https://ossimg.xinli001.com/20200309/09021f94224ccac6e2c43bbb9f8270c4.jpg!80",
          "is_active": "1"
        }
      },
      "object_id": "99397592"
    },
    {
      "id": "99397593",
      "title": "爱情，哪里只是动动嘴那么简单。",
      "cover":
          "https://ossimg.xinli001.com/20200401/3e298b4a34d6499784a909640789f0ca.jpg!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397593",
      "speak": "文熙",
      "favnum": "38",
      "viewnum": "6094",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397593",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "1295",
        "title": "文熙",
        "cover":
            "https://ossimg.xinli001.com/20180504/75710d4b4e1d64d2bf86b3e6898766a8.jpg",
        "fmnum": "161",
        "user_id": "1005379019",
        "viewnum": "1034204",
        "content": "~听她的声音~很温暖~\r\n电台资深情感节目女主播，专辑《文熙情感电台》\r\n微信公众号：听文熙",
        "favnum": "669",
        "user": {
          "id": "1005379019",
          "username": "xinli_5aec175b3facd",
          "nickname": "小鲸鱼7b9820",
          "phone": "15018413586",
          "avatar":
              "https://ossimg.xinli001.com/20180824/42e66637380cc94a9b9b2ec5f6fc101b.png!80",
          "is_active": "1"
        }
      },
      "object_id": "99397593"
    },
    {
      "id": "99397544",
      "title": "03 | 如何积累心理学素材？",
      "cover":
          "https://ossimg.xinli001.com/20200324/425869ced9b61206c0793047b0bbc30a.jpg!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397544",
      "speak": "人生答疑馆",
      "favnum": "7",
      "viewnum": "1100",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397544",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "1383",
        "title": "人生答疑馆",
        "cover":
            "https://ossimg.xinli001.com/20200320/c3055f9fed64c592b5eae9eddf9ffede.jpg",
        "fmnum": "11",
        "user_id": "1006099089",
        "viewnum": "13407",
        "content": "你的心理学互助·成长社区。",
        "favnum": "36",
        "user": {
          "id": "1006099089",
          "username": "xinliqa@xinli001.com",
          "nickname": "人生答疑馆",
          "phone": "13800000001",
          "avatar":
              "https://ossimg.xinli001.com/20181203/6eed00a18feb7e3254ca9774391531b5.jpg!80",
          "is_active": "1"
        }
      },
      "object_id": "99397544"
    },
    {
      "id": "99397582",
      "title": "越努力越焦虑背后，藏着一个低自尊的自己",
      "cover":
          "https://ossimg.xinli001.com/20200330/c31fdea98808e1d132cfef50a620e50d.jpg!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397582",
      "speak": "穆羊",
      "favnum": "121",
      "viewnum": "11167",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397582",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "1293",
        "title": "穆羊",
        "cover":
            "https://ossimg.xinli001.com/20180428/625d57b2c198cac1d11d94c3a52c8dc8.jpg",
        "fmnum": "7",
        "user_id": "4040064",
        "viewnum": "114162",
        "content":
            "世间一切，都是遇见，就像冷遇见暖，就有了雨；春遇到冬，有了岁月；我在这里遇见你，便有了精彩，用声音温暖你，留下一片独一无二的风景。",
        "favnum": "56",
        "user": {
          "id": "4040064",
          "username": "firstjiayansen@163.com",
          "nickname": "穆羊",
          "phone": "13210553787",
          "avatar":
              "https://ossimg.xinli001.com/20200311/167deb015d41954093e4c4a861ee135f.jpeg!80",
          "is_active": "1"
        }
      },
      "object_id": "99397582"
    },
    {
      "id": "99397583",
      "title": "故事的开始，从一个人的勇敢说起",
      "cover":
          "https://ossimg.xinli001.com/20200331/b27a1bf6169e5e8c59938fc70738571a.jpg!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397583",
      "speak": "欢子",
      "favnum": "49",
      "viewnum": "6087",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397583",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "1304",
        "title": "欢子",
        "cover":
            "https://ossimg.xinli001.com/20180620/c9f2349821007fa2d557109d0bb29669.jpg",
        "fmnum": "42",
        "user_id": "1000294712",
        "viewnum": "804961",
        "content": "等风，等温柔，等你张开双手！",
        "favnum": "678",
        "user": {
          "id": "1000294712",
          "username": "xinli_14385984486134",
          "nickname": "欢子",
          "phone": "13350905919",
          "avatar":
              "https://ossimg.xinli001.com/20180619/856527a45086df77a61afa5bdad1dc82.jpg!80",
          "is_active": "1"
        }
      },
      "object_id": "99397583"
    },
    {
      "id": "99397584",
      "title": "分手三年了，我还是不敢谈恋爱",
      "cover":
          "https://ossimg.xinli001.com/20200331/ca3b14b9617f82155993ab4eae06b507.jpg!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397584",
      "speak": "大葱",
      "favnum": "6",
      "viewnum": "2062",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397584",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "1311",
        "title": "大葱",
        "cover":
            "https://ossimg.xinli001.com/20180821/d4c1d4e2c60633961eb50c3d2b5e0b3f.jpeg",
        "fmnum": "69",
        "user_id": "1005701995",
        "viewnum": "1260012",
        "content":
            "总有些文字触动你的情绪，打开你心底的开关，释放情绪，从这里开始吧。如果你不开心、感觉孤独、或者迷茫 ，也许这里的文字可以给你一些些他们的经验解读，带给你不一样的视角，去看自己周遭的世界。然后，洗礼自己，重新上路。",
        "favnum": "1378",
        "user": {
          "id": "1005701995",
          "username": "xinli_5b61c344c80b5",
          "nickname": "洋葱小调",
          "phone": "18310026697",
          "avatar":
              "https://ossimg.xinli001.com/20180823/eb52d7aba6a64c76e79169ec352fcf9b.png!80",
          "is_active": "1"
        }
      },
      "object_id": "99397584"
    },
    {
      "id": "99397539",
      "title": "02 | 吸睛的标题该怎么取？",
      "cover":
          "https://ossimg.xinli001.com/20200323/fd437ea4ba69948a32003fd1ad727b01.jpg!120x120",
      "url": "http://yiapi.xinli001.com/fm/media-url/0/99397539",
      "speak": "人生答疑馆",
      "favnum": "15",
      "viewnum": "3890",
      "background": "",
      "is_teacher": false,
      "absolute_url":
          "http://static.xinli001.com/msite/index.html#/fm-audio-share?id=99397539",
      "url_list": [],
      "status": "1",
      "diantai": {
        "id": "1383",
        "title": "人生答疑馆",
        "cover":
            "https://ossimg.xinli001.com/20200320/c3055f9fed64c592b5eae9eddf9ffede.jpg",
        "fmnum": "11",
        "user_id": "1006099089",
        "viewnum": "13407",
        "content": "你的心理学互助·成长社区。",
        "favnum": "36",
        "user": {
          "id": "1006099089",
          "username": "xinliqa@xinli001.com",
          "nickname": "人生答疑馆",
          "phone": "13800000001",
          "avatar":
              "https://ossimg.xinli001.com/20181203/6eed00a18feb7e3254ca9774391531b5.jpg!80",
          "is_active": "1"
        }
      },
      "object_id": "99397539"
    }
  ];

  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    // items.add((items.length + 1).toString());
    // if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

  /**
   * new ListView.separated(
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) {
        return new Container(
          height: 80,
          color: Colors.white.withOpacity(.1),
          child: Center(
            child: Text(
              '$index',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return new Container(
          height: 1,
          color: Colors.black.withOpacity(0.1),
        );
      },
    );
   */

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: true,
      header: WaterDropMaterialHeader(),
      controller: _refreshController,
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      child: new ListView(
        shrinkWrap: true,
        children: <Widget>[
          new HomeBanner(),
        ],
      ),
    );
  }
}
