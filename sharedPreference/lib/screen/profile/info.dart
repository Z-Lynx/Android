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
        'https://scontent.fdad3-4.fna.fbcdn.net/v/t39.30808-6/306350758_625830345837098_3396872514139395359_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=wSoZ-279Z9MAX_18nC5&_nc_ht=scontent.fdad3-4.fna&oh=00_AT-6oOkcFdzpwu9ukCPHpyuu5qtLx6WWAduBAaCy3MFhJg&oe=632596E0',
      ),
    );

Widget buildName() => Column(
      children: [
        Text(
          " Nguyễn Trần Tiến - 310",
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
        buildButton(context, '10k', 'Following'),
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
