import 'package:btgk_android/screen/appbar/navigationDrawer.dart';
import 'package:btgk_android/utils/appbar.dart';
import 'package:btgk_android/screen/profile/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      drawer: navigationDrawer(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
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
