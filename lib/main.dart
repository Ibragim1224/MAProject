import 'package:flutter/material.dart';
import 'package:second_pro/home/intro_slider.dart';
import 'my_drawer_header.dart';
import 'package:intro_slider/intro_slider.dart';

// https://youtu.be/k1LxTsmAURU

import 'classrooms.dart';
import 'teachers.dart';
import 'timetable.dart';
//import 'subjects.dart';
import 'settings.dart';
import 'theme_mode.dart';
import 'about_dev.dart';
import 'posts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.classrooms;
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.classrooms) {
      container = ClassroomsPage();
    } else if (currentPage == DrawerSections.additional) {
      container = AdditionalPage();
    } else if (currentPage == DrawerSections.timetable) {
      container = PostsPage();
    } //else if (currentPage == DrawerSections.subjects) {
      //container = SubjectsPage();
    //}
    // else if (currentPage == DrawerSections.settings) {
    //   container = SettingsPage();
     else if (currentPage == DrawerSections.about_dev) {
      container = AboutDevPage();
    // } else if (currentPage == DrawerSections.privacy_policy) {
    //   container = PrivacyPolicyPage();
    // } else if (currentPage == DrawerSections.send_feedback) {
    //   container = SendFeedbackPage();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text("Turin Politexnic University"),

      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [

          menuItem(1, "Classrooms", Icons.dashboard_outlined,
              currentPage == DrawerSections.classrooms ? true : false),
          menuItem(2, "Time table", Icons.people_alt_outlined,
              currentPage == DrawerSections.additional ? true : false),
          menuItem(3, "Additional", Icons.event,
              currentPage == DrawerSections.timetable ? true : false),
          //menuItem(4, "Subject", Icons.notes,
          //    currentPage == DrawerSections.subjects ? true : false),
          Divider(),
          // menuItem(5, "Settings", Icons.settings_outlined,
          //     currentPage == DrawerSections.settings ? true : false),
          menuItem(6, "Turin News", Icons.cast_for_education_sharp,
              currentPage == DrawerSections.notifications ? true : false),
          Divider(),
          menuItem(7, "About Developers", Icons.developer_mode,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(8, "Send feedback", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),

        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
              if (id == 1) {
              currentPage = DrawerSections.classrooms;
            } else if (id == 2) {
              currentPage = DrawerSections.additional;
            } else if (id == 3) {
              currentPage = DrawerSections.timetable;
            } //else if (id == 4) {
              //currentPage = DrawerSections.subjects;
            //}
            else if (id == 5) {
              currentPage = DrawerSections.settings;
            } else if (id == 6) {
              currentPage = DrawerSections.notifications;
            } else if (id == 7) {
              currentPage = DrawerSections.about_dev;
            } else if (id == 8) {
              currentPage = DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  classrooms,
  additional,
  timetable,
  aligment,
  //subjects,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
  about_dev
}

























