import 'package:app_tiennt/screen/profile/appbar.dart';
import 'package:app_tiennt/screen/profile/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          TitleProfile(),
          SizedBox(height: 48),
          buildAboutMe()
        ],
      ),
    );
  }
}

class TitleProfile extends StatelessWidget {
  const TitleProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        buildBackGroundAvatar(),
        Positioned(
          top: 128,
          child: buildAvatar(),
        ),
        Positioned(
          top: 290,
          child: buildName(),
        ),
        Positioned(
          top: 350,
          child: buildInfo(context),
        ),
      ],
    );
  }
}
