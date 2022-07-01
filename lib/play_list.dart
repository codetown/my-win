import 'package:flutter/material.dart';

import 'components/friend_item.dart';

class PlayList extends StatelessWidget {
  const PlayList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List friendList = [
      {
        'title': '悟空',
        'subtitle': '花果山水帘洞美猴王齐天大圣',
        'imageUrl':
            'https://gitlab.com/codetown/codedata/-/raw/master/avatars/xy02.png'
      },
      {
        'title': '牛魔王',
        'subtitle': '火焰山芭蕉洞牛魔王平天大圣',
        'imageUrl':
            'https://gitlab.com/codetown/codedata/-/raw/master/avatars/avt101.jpg'
      },
      {
        'title': '八戒',
        'subtitle': '福林山云栈洞猪妖王前世天蓬元帅',
        'imageUrl':
            'https://gitlab.com/codetown/codedata/-/raw/master/avatars/xy03.png'
      },
      {
        'title': '悟净',
        'subtitle': '八百里流沙河前世卷帘大将',
        'imageUrl':
            'https://gitlab.com/codetown/codedata/-/raw/master/avatars/xy05.png'
      },
      {
        'title': '龙马',
        'subtitle': '鹰愁涧',
        'imageUrl':
            'https://gitlab.com/codetown/codedata/-/raw/master/avatars/xy01.png'
      },
      {
        'title': '敖玲',
        'subtitle': '西海龙宫',
        'imageUrl':
            'https://gitlab.com/codetown/codedata/-/raw/master/avatars/xy04.png'
      },
      {
        'title': '爱谁谁',
        'subtitle': '不知道从哪找来的',
        'imageUrl':
            'https://gitlab.com/codetown/codedata/-/raw/master/avatars/avt102.jpg'
      },
      {
        'title': '卖房小王',
        'subtitle': '房产销售',
        'imageUrl':
            'https://gitlab.com/codetown/codedata/-/raw/master/avatars/avt106.jpg'
      },
      {
        'title': '水产老吴',
        'subtitle': '买海鲜的',
        'imageUrl':
            'https://gitlab.com/codetown/codedata/-/raw/master/avatars/avt103.jpg'
      },
      {
        'title': '东北大哥',
        'subtitle': '那个谁他老爸',
        'imageUrl':
            'https://gitlab.com/codetown/codedata/-/raw/master/avatars/avt104.jpg'
      },
      {
        'title': '要命小弟',
        'subtitle': '黑社会手足',
        'imageUrl':
            'https://gitlab.com/codetown/codedata/-/raw/master/avatars/avt105.jpg'
      },
    ];
    return Container(
      width: 200,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          right: BorderSide(
            width: 1,
            color: Color(0xFFEEEEEE),
          ),
        ),
      ),
      child: ListView.separated(
        separatorBuilder: (_, index) => const Divider(
          height: 1,
          color: Color(0xFFEEEEEE),
        ),
        itemCount: friendList.length,
        itemBuilder: (_, index) => RawMaterialButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FriendItem(
                imgUrl: friendList[index]['imageUrl'],
                title: friendList[index]['title'],
                subtitle: friendList[index]['subtitle']),
          ),
        ),
      ),
    );
  }
}
