import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';




class AboutDevPage extends StatelessWidget {
  const AboutDevPage({Key? key}) : super(key: key);

  _launchurl() async {
    const url = "https://www.youtube.com/watch?v=1JhJWcO01KE";
    const url_youtube = "https://www.youtube.com/watch?v=MGrT-J_7TPY";
    const url_tiktok = "https://www.youtube.com/watch?v=MGrT-J_7TPY";
    if(await canLaunch(url))
      {
        await (url);
      }
    else if(await canLaunch(url_youtube))
      {
        await(url_youtube);
      }
    else if(await canLaunch(url_tiktok))
    {
      await(url_tiktok);
    }
    else{
      throw "colndmasnasdas";
      print("sasdasd");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buidHeader(),
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200
              ),
              child: Text("I am 22 years old and I work 2 compani.First company is ITPArk so secondly is ZK"),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text("Skills".toUpperCase(), style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: 10.0,),

            Row(
              children: <Widget>[
                SizedBox(width: 16.0,),
                Expanded(
                    flex: 2,
                    child: Text("Python(Backend)", textAlign: TextAlign.right,),
                ),

                SizedBox(width: 10.0,),
                Expanded(
                    flex: 5,
                    child: LinearProgressIndicator(
                    value: 0.85,
                )),
                SizedBox(width: 16.0,)
              ],
            ),
            SizedBox(height: 10.0,),

            Row(
              children: <Widget>[
                SizedBox(width: 16.0,),
                Expanded(
                  flex: 2,
                  child: Text("Django", textAlign: TextAlign.right,),
                ),

                SizedBox(width: 10.0,),
                Expanded(
                    flex: 5,
                    child: LinearProgressIndicator(
                      value: 0.95,
                    )),
                SizedBox(width: 16.0,)
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                SizedBox(width: 16.0,),
                Expanded(
                  flex: 2,
                  child: Text("OpenCV", textAlign: TextAlign.right,),
                ),

                SizedBox(width: 10.0,),
                Expanded(
                    flex: 5,
                    child: LinearProgressIndicator(
                      value: 0.55,
                    )),
                SizedBox(width: 16.0,)
              ],
            ),
            SizedBox(height: 20.0,),





            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text("Expperience".toUpperCase(), style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: 10.0,),
            ListTile(
              leading: Icon(Icons.code),
              title: Text("ITPARK",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Python(Backend) Developer"),
                  Text("2019-2020")
                ],
              ),
            ),

            SizedBox(height: 10.0,),

            ListTile(
              leading: Icon(Icons.cast_for_education_sharp),
              title: Text("ITPARK",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Python Mentor"),
                  Text("2020")
                ],
              ),
            ),

            SizedBox(height: 10.0,),

            ListTile(
              leading: Icon(Icons.code),
              title: Text("Zamonaviy Kammunikatsialar",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Python Developer"),
                  Text("2021-2022")
                ],
              ),
            ),

            SizedBox(height: 10.0,),

            ListTile(
              leading: Icon(Icons.developer_mode),
              title: Text("Freelance"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Python Developer"),
                  Text("2020-....")
                ],
              ),
            ),
            SizedBox(height: 15.0,),






            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text("Education".toUpperCase(), style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
            ),

            SizedBox(height: 10.0,),

            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text("Tashkent University of information Technalogies"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Bachelor Degree"),
                  Text("2020-2022")
                ],
              ),
            ),

            SizedBox(height: 10.0,),

            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text("Turin Politechnic University in Tashkent"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Bachelor degree"),
                  Text("2022-....")
                ],
              ),
            ),
            SizedBox(height: 10.0,),


            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text("Social".toUpperCase(), style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child:
                      IconButton(
                        // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                          icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.red,),
                          onPressed: null,
                      ),
                  ),
                ),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child:
                    IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                      icon: FaIcon(FontAwesomeIcons.youtube, color: Colors.redAccent,),
                      onPressed: null,
                    ),
                  ),
                ),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child:
                    IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                      icon: FaIcon(FontAwesomeIcons.tiktok, color: Colors.black,),
                      onPressed: null,
                    ),
                  ),
                ),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child:
                    Icon(
                      Icons.webhook_outlined,
                      color: Colors.black,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                ),
              ],
            ),
            Divider(),


            _Ibrakhim(),

            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200
              ),
              child: Text("I am Software engineers  "),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text("Skills".toUpperCase(), style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: 10.0,),

            Row(
              children: <Widget>[
                SizedBox(width: 16.0,),
                Expanded(
                  flex: 2,
                  child: Text("Python(Backend)", textAlign: TextAlign.right,),
                ),

                SizedBox(width: 10.0,),
                Expanded(
                    flex: 5,
                    child: LinearProgressIndicator(
                      value: 0.65,
                    )),
                SizedBox(width: 16.0,)
              ],
            ),
            SizedBox(height: 10.0,),

            Row(
              children: <Widget>[
                SizedBox(width: 16.0,),
                Expanded(
                  flex: 2,
                  child: Text("Flutter", textAlign: TextAlign.right,),
                ),

                SizedBox(width: 10.0,),
                Expanded(
                    flex: 5,
                    child: LinearProgressIndicator(
                      value: 0.75,
                    )),
                SizedBox(width: 16.0,)
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                SizedBox(width: 16.0,),
                Expanded(
                  flex: 2,
                  child: Text("Flutter", textAlign: TextAlign.right,),
                ),

                SizedBox(width: 10.0,),
                Expanded(
                    flex: 5,
                    child: LinearProgressIndicator(
                      value: 0.40,
                    )),
                SizedBox(width: 16.0,)
              ],
            ),
            SizedBox(height: 20.0,),

            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text("Expperience".toUpperCase(), style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: 10.0,),
            ListTile(
              leading: Icon(Icons.code),
              title: Text("Freelance",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Python(Backend) Developer"),
                  Text("2022-...")
                ],
              ),
            ),
            SizedBox(height: 10.0,),

            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text("Education".toUpperCase(), style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
            ),

            SizedBox(height: 10.0,),

            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text("Turin Politechnic University in Tashkent"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Bachelor degree"),
                  Text("2020-....")
                ],
              ),
            ),


            Divider(),


            _Ruslan(),

            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200
              ),
              child: Text("I am 20 years old.ruslan ruslan ruslan ruslan ruslan"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text("Skills".toUpperCase(), style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: 10.0,),

            Row(
              children: <Widget>[
                SizedBox(width: 16.0,),
                Expanded(
                  flex: 2,
                  child: Text("Python(Backend)", textAlign: TextAlign.right,),
                ),

                SizedBox(width: 10.0,),
                Expanded(
                    flex: 5,
                    child: LinearProgressIndicator(
                      value: 0.65,
                    )),
                SizedBox(width: 16.0,)
              ],
            ),
            SizedBox(height: 10.0,),

            Row(
              children: <Widget>[
                SizedBox(width: 16.0,),
                Expanded(
                  flex: 2,
                  child: Text("Django", textAlign: TextAlign.right,),
                ),

                SizedBox(width: 10.0,),
                Expanded(
                    flex: 5,
                    child: LinearProgressIndicator(
                      value: 0.75,
                    )),
                SizedBox(width: 16.0,)
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                SizedBox(width: 16.0,),
                Expanded(
                  flex: 2,
                  child: Text("Flutter", textAlign: TextAlign.right,),
                ),

                SizedBox(width: 10.0,),
                Expanded(
                    flex: 5,
                    child: LinearProgressIndicator(
                      value: 0.40,
                    )),
                SizedBox(width: 16.0,)
              ],
            ),
            SizedBox(height: 20.0,),

            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text("Expperience".toUpperCase(), style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: 10.0,),
            ListTile(
              leading: Icon(Icons.code),
              title: Text("Freelance",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Python(Backend) Developer"),
                  Text("2022-...")
                ],
              ),
            ),
            SizedBox(height: 10.0,),

            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text("Education".toUpperCase(), style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
            ),

            SizedBox(height: 10.0,),

            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text("Turin Politechnic University in Tashkent"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Bachelor degree"),
                  Text("2020-....")
                ],
              ),
            ),




            //OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO


          ],
        ),
      ),
    );
  }

  Row _buidHeader() {
    return Row(children: <Widget>[
            SizedBox(width: 20.0,),
            SizedBox(height: 100.0,),
            Container(
              width: 80.0,
                child: Image.asset('assets/image/turin_logo.jpg')),
            SizedBox(width: 20.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Saidov Ibrat Makhmudjonovich", style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
                ),),
                Text("Python developer"),
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on, color: Colors.blue,),
                    Text("Uzbekistan,Tashkent", style:
                      TextStyle(
                        color: Colors.blue
                      ),),
                  ],
                )
              ],
            )
          ],
          );
  }
  Row _Ruslan() {
    return Row(children: <Widget>[
      SizedBox(width: 20.0,),
      Container(
          width: 80.0,
          child: Image.asset('assets/image/turin_logo.jpg')),
      SizedBox(width: 20.0,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Ruslanbek Joldasbaev Jumabaevich", style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold
          ),),
          Text("GO developer"),
          Row(
            children: <Widget>[
              Icon(Icons.location_on, color: Colors.blue,),
              Text("Uzbekistan,Tashkent", style:
              TextStyle(
                  color: Colors.blue
              ),),
            ],
          )
        ],
      )
    ],
    );
  }




  Row _Ibrakhim() {
    return Row(children: <Widget>[
      SizedBox(width: 20.0,),
      Container(
          width: 80.0,
          child: Image.asset('assets/image/turin_logo.jpg')),
      SizedBox(width: 20.0,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Ibrohim Xatamov Ilhomjonovich", style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold
          ),),
          Text("Flutter developer"),
          Row(
            children: <Widget>[
              Icon(Icons.location_on, color: Colors.blue,),
              Text("Uzbekistan,Tashkent", style:
              TextStyle(
                  color: Colors.blue
              ),),
            ],
          )
        ],
      )
    ],
    );
  }
}
