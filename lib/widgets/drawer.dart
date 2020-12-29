import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  String userPictureURL = "https://cdn.shopify.com/s/files/1/0045/5104/9304/t/27/assets/AC_ECOM_SITE_2020_REFRESH_1_INDEX_M2_THUMBS-V2-1.jpg?v=8913815134086573859";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Berk Er",
                style: TextStyle(fontSize: 18, color: Colors.black)),
            accountEmail: Text("berkerr.tr@gmail.com",
                style: TextStyle(fontSize: 15, color: Colors.black)),
            currentAccountPicture: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(userPictureURL))),
            ),
            decoration: BoxDecoration(color: Colors.orange),
          ),
          ListTile(
            title: Text('Ankara Üniversitesi'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çankaya Üniversitesi'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Türk Hava Kurumu Üniversitesi'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
