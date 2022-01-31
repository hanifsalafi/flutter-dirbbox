// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF1F1F1),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF22215B),
          ),
        ),
        title: Text(
          'My Profile',
          style: TextStyle(color: Color(0xFF22215B)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Color(0xFF22215B),
            ),
          )
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      child: Image.asset(
                        "assets/images/profile-image.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Neelesh Chaudhary",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF22215B),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "UI / UX Designer",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF22215B),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF22215B).withOpacity(0.6),
                          height: 1.5),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 50,
                    height: 25,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text(
                      "PRO",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    )),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Folders",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF22215B),
                  ),
                ),
                Container(
                  width: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/add-icon.png"),
                      Image.asset("assets/icons/setting-icon.png"),
                      Image.asset("assets/icons/arrow-right-blue-icon.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolders(
                  title: "Mobile Apps",
                  date: "December 20, 2020",
                  color: Colors.blue,
                  image: Image.asset("assets/icons/folder-blue-icon.png"),
                ),
                SizedBox(width: 25),
                CardFolders(
                  title: "SVG Icons",
                  date: "December 14, 2020",
                  color: Colors.amber,
                  image: Image.asset("assets/icons/folder-amber-icon.png"),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolders(
                  title: "Prototypes",
                  date: "November 22, 2020",
                  color: Colors.red,
                  image: Image.asset("assets/icons/folder-red-icon.png"),
                ),
                SizedBox(width: 25),
                CardFolders(
                  title: "Avatars",
                  date: "November 10, 2020",
                  color: Colors.teal,
                  image: Image.asset("assets/icons/folder-teal-icon.png"),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Uploads",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF22215B),
                  ),
                ),
                Image.asset("assets/icons/sort-icon.png"),
              ],
            ),
          ),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              child: Image.asset("assets/icons/word-icon.png"),
            ),
            title: Text("Projects.docx"),
            subtitle: Text("November 22, 2020"),
            trailing: Text("300kb"),
          )
        ],
      ),
    );
  }
}

class CardFolders extends StatelessWidget {
  CardFolders({
    Key? key,
    required this.title,
    required this.date,
    required this.color,
    required this.image,
  }) : super(key: key);

  final String title;
  final String date;
  final Color color;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            image,
            SizedBox(height: 15),
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
            SizedBox(height: 10),
            Text(
              date,
              style: TextStyle(
                fontSize: 12,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
