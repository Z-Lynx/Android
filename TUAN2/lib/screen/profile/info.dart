import 'package:app_tiennt/screen/login/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildBackGroundAvatar() => Container(
      color: Colors.grey,
      child: Image.network(
        'https://i.pinimg.com/originals/d8/39/74/d839742a057e1d111d0373fa614de906.jpg',
        height: 200,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );

Widget buildAvatar() => CircleAvatar(
      radius: 72,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: NetworkImage(
        'https://scontent.fdad1-3.fna.fbcdn.net/v/t39.30808-6/300470411_614373540316112_2825554587527327277_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=igdV3m0R4zoAX87immZ&tn=tYj1PTYS6FYNen09&_nc_ht=scontent.fdad1-3.fna&oh=00_AT8vKsigPD5ulXTw08QVf-WSJiWh469HEaPZW_DqoewrYA&oe=630EF214',
      ),
    );

Widget buildName() => Column(
      children: [
        Text(
          "Lynn Coder",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        SizedBox(height: 4),
        Text(
          "nguyentrantien752@gmail.com",
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );

Widget buildInfo(BuildContext context) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        buildButton(context, '5.0', 'Ranking'),
        buildDivider(),
        buildButton(context, '100000', 'Following'),
        buildDivider(),
        buildButton(context, '0', 'Followers'),
      ],
    );
Widget buildDivider() => Container(
      height: 24,
      child: VerticalDivider(),
    );

Widget buildButton(BuildContext context, String value, String text) =>
    MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 4),
      onPressed: () {},
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            value,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(height: 2),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );

Widget buildAboutMe() => Container(
    padding: EdgeInsets.symmetric(horizontal: 40,vertical: 190),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
         SizedBox(height: 16),
            Text(
              "My name is Lynn. Currently in my 3rd year of university. And working as a fresher data engineer and freelance remote FE",
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
      ],
    ));
