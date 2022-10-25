import 'package:contactphone/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class info extends StatefulWidget {
  final String name;
  final String phone;
  const info({super.key, required this.name, required this.phone});

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Stack(
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
          child: buildName(widget.name,widget.phone),
        ),
      ],
    ));
  }
}

Widget buildBackGroundAvatar() => Container(
      color: Colors.grey,
      child: Image.network(
        'https://images.unsplash.com/photo-1540122995631-7c74c671ff8d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80',
        height: 200,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );

Widget buildAvatar() => CircleAvatar(
      radius: 72,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: NetworkImage(
        "https://www.pngitem.com/pimgs/m/402-4023350_transparent-member-icon-png-member-logo-png-download.png",
      ),
    );

Widget buildName(String name, String phone) => Column(
      children: [
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        //( Nguyễn Trần Tiến - 310)
        SizedBox(height: 4),
        Text(
          "Phone:  "+phone,
          style: TextStyle(color: Colors.grey),
        ),
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


AppBar buildAppBar(BuildContext context) {
  return AppBar(
    
    toolbarHeight: 50,
    leading: BackButton(
      color: Colors.black,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return MyApp();
            },
          ),
        );
      },
    ),
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(
      'Info',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    elevation: 0,
    actions: [
      Icon(
        Icons.settings,
        color: Colors.black,
      ),
    ],
  );
}