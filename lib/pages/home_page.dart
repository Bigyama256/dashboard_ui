import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple[500],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(70),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 40),
                    title: Text(
                      'Hi Steve !',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Good Morning!',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.white54),
                    ),
                    trailing: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/user.png'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.deepPurple[500],
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                  ),
                ),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 35,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    itemDashboard('Viedos', CupertinoIcons.play_rectangle,
                        Colors.deepOrange, context,
                        iconSize: 60),
                    itemDashboard(
                        'Trash', CupertinoIcons.trash, Colors.green, context,
                        iconSize: 60),
                    itemDashboard(
                        'Lock', CupertinoIcons.lock, Colors.yellow, context,
                        iconSize: 60),
                    itemDashboard('Setting', CupertinoIcons.settings,
                        Colors.blue, context,
                        iconSize: 60),
                    itemDashboard('Upload', CupertinoIcons.add_circled,
                        Colors.purple, context,
                        iconSize: 60),
                    itemDashboard(
                        'Contacts', CupertinoIcons.phone, Colors.teal, context,
                        iconSize: 60),
                    itemDashboard(
                        'Favourite', CupertinoIcons.heart, Colors.red, context,
                        iconSize: 60),
                    itemDashboard('About', CupertinoIcons.question_circle,
                        Colors.grey, context,
                        iconSize: 60),
                    itemDashboard(
                        'Wifi', CupertinoIcons.wifi, Colors.amber, context,
                        iconSize: 60),
                    itemDashboard('Airplane Mode', CupertinoIcons.airplane,
                        Colors.pink, context,
                        iconSize: 60),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

itemDashboard(
        String title, IconData icondata, Color background, BuildContext context,
        {double iconSize = 30}) =>
    Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration:
                BoxDecoration(color: background, shape: BoxShape.circle),
            child: Icon(
              icondata,
              color: Colors.white,
              size: iconSize,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
