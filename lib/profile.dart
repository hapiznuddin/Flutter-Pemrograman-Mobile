import 'package:flutter/material.dart';
import 'package:uts_pm_hapiznuddin_20190801364/login.dart';
import 'theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrnd,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Text('Account Profile', style: Heading4),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 45.0,
                    backgroundImage: AssetImage('assets/images/profil.jpg'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hapiz Nuddin Setiadi', style: Heading5),
                      SizedBox(height: 8),
                      Text('20190801364', style: Heading6),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 48, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 15),
                    blurRadius: 15,
                  ),
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, -10),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 16, right: 16, bottom: 32),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('Account', style: BodyL),
                      leading: Icon(
                        Icons.person,
                        size: 24,
                        color: Neutral90,
                      ),
                      onTap: () {},
                      trailing: Icon(Icons.keyboard_arrow_right,
                          size: 32, color: Neutral90),
                    ),
                    SizedBox(
                        height: 20,
                        child: Divider(
                          color: Neutral60,
                        )),
                    ListTile(
                      title: Text('History', style: BodyL),
                      leading: Icon(
                        Icons.history,
                        size: 24,
                        color: Neutral90,
                      ),
                      onTap: () {},
                      trailing: Icon(Icons.keyboard_arrow_right,
                          size: 32, color: Neutral90),
                    ),
                    SizedBox(
                        height: 20,
                        child: Divider(
                          color: Neutral60,
                        )),
                    ListTile(
                      title: Text('Favorite', style: BodyL),
                      leading: Icon(
                        Icons.favorite,
                        size: 24,
                        color: Neutral90,
                      ),
                      onTap: () {},
                      trailing: Icon(Icons.keyboard_arrow_right,
                          size: 32, color: Neutral90),
                    ),
                    SizedBox(
                        height: 20,
                        child: Divider(
                          color: Neutral60,
                        )),
                    ListTile(
                      title: Text('Settings', style: BodyL),
                      leading: Icon(
                        Icons.settings,
                        size: 24,
                        color: Neutral90,
                      ),
                      onTap: () {},
                      trailing: Icon(Icons.keyboard_arrow_right,
                          size: 32, color: Neutral90),
                    ),
                    SizedBox(
                        height: 20,
                        child: Divider(
                          color: Neutral60,
                        )),
                    ListTile(
                      title: Text('Contact Us', style: BodyL),
                      leading: Icon(
                        Icons.phone,
                        size: 24,
                        color: Neutral90,
                      ),
                      onTap: () {},
                      trailing: Icon(Icons.keyboard_arrow_right,
                          size: 32, color: Neutral90),
                    ),
                    SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 50,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 8, 67, 116)
                                    .withOpacity(0.3),
                                offset: Offset(0, 10),
                                blurRadius: 16,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.grey.shade300,
                              primary: primary,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height: 4),
                                  Text(
                                    'Log Out',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
