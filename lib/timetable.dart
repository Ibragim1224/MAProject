// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class TimetablePage extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Time Table'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   String _selectedCountry="First level";
//   var country={'Pre':'PE','First level':'FL','Second level':'SL','Third level':'ThL'};
//
//   List _countries=[];
//   CountryDependentDropDown(){
//     country.forEach((key, value) {
//       _countries.add(key);
//     });
//   }
//
//   String _selectedState="";
//   var state={
//     'G1':'PE',
//     'G2':'PE',
//     'G3':'PE',
//     'G4':'PE',
//     'G5':'PE',
//     'G1':'PE',
//     'G2':'PE',
//     'G3':'PE',
//     'G4':'PE',
//     'G5':'PE',
//     'G6':'PE',
//     'G7':'PE',
//     'G8':'PE',
//     'G9':'PE',
//     'G10':'PE',
//     'G11':'PE',
//     'G12':'PE',
//     'G13':'PE',
//     'G14':'PE',
//     'BM1-22': "PE",
//     'BM2-22': "PE",
//     'BM3-22': "PE",
//     "ME1-21" : "FL",
//     "ME2-21" : "FL",
//     "IT1-21"  : "FL",
//     "IT2-21"  : "FL",
//     "IT3-21"  : "FL",
//     "IT4-21"  : "FL",
//     "IT5-21"  : "FL",
//     "IT6-21"  : "FL",
//     "CIE-21" : "FL",
//     "ME-1-20" : "FL",
//     "ME-2-20" : "FL",
//     "SE1-21" : "FL",
//     "SE2-21" : "FL",
//     "SE3-21" : "FL",
//     "SE4-21" : "FL",
//     "AD1-21" : "FL",
//     "AD2-21" : "FL",
//     "BM1-21" : "FL",
//     "CIE-1-2-20" : "SL",
//     "ME-1-2-20" : "SL",
//     "ME-1-2-20" : "SL",
//     "IT1-20"  : "SL",
//     "IT2-20"  : "SL",
//     "IT3-20"  : "SL",
//     "IT4-20"  : "SL",
//     "SE1-20" : "SL",
//     "SE1-20" : "SL",
//     "SE2-20" : "SL",
//     "SE3-20" : "SL",
//     "SE4-20" : "SL",
//     "SE5-20" : "SL",
//     "SE6-20" : "SL",
//     "SE7-20" : "SL",
//     "SE8-20" : "SL",
//     "SE9-20" : "SL",
//     "SE10-20" : "SL",
//     "SE11-20" : "SL",
//     "SE12-20" : "SL",
//     "AD1-20" : "SL",
//     "AD2-20" : "SL",
//     "AD3-20" : "SL",
//     "AD4-20" : "SL",
//     "ME1-19" : "ThL",
//     "ME1-19" : "ThL",
//     "ME1-19" : "ThL",
//     "ME1-19" : "ThL",
//     "CIE-19" : "ThL",
//     "IT1-19"  : "ThL",
//     "IT2-19"  : "ThL",
//     "IT3-19"  : "ThL",
//     "IT4-19"  : "ThL",
//     "IT5-19"  : "ThL",
//     "IT6-19"  : "ThL"
//   };
//
//   List _states=[];
//   StateDependentDropDown(countryShortName){
//     state.forEach((key, value) {
//       if(countryShortName==value){
//         _states.add(key);
//       }
//
//     });
//     _selectedState= _states[0];
//   }
//
//   String _selectedCity="";
//   var city={'Ranchi':'Jharkhand','Tata':'Jharkhand','Quetta':'Baluchistan','Ludhiana':'Panjab','Amritsar':'Panjab'};
//
//   List _cities=[];
//   CityDependentDropDown(stateShortName){
//     city.forEach((key, value) {
//       if(stateShortName==value){
//         _cities.add(key);
//       }
//
//     });
//     _selectedCity= _cities[0];
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     CountryDependentDropDown();
//   }
//
//   @override
//
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/image/exam.jpg"),
//                 fit: BoxFit.cover
//           ),
//         ),
//       //  margin:EdgeInsets.all(15),
//
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               SizedBox(height: 23,),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child:Text("Level",  style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18, color: Colors.white)),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(7.0),
//                   border: Border.all(color: Colors.white),color: Color.fromARGB(50, 30, 44, 33),),
//                 width: 500,
//                 height: 50,
//                 child: DropdownButtonHideUnderline(
//                   child: DropdownButton(
//                     dropdownColor: Color.fromARGB(500, 0, 30, 50),
//                     style: const TextStyle(
//                       color: Colors.white,
//                     ),
//                     value: _selectedCountry,
//                     onChanged: (newValue){
//                       setState(() {
//                         _cities=[];
//                         _states=[];
//                         StateDependentDropDown(country[newValue]);
//                         _selectedCountry="$newValue";
//                       });
//
//                     },
//                     items:_countries.map((country){
//                       return DropdownMenuItem(
//                         child: new Text(country),
//                         value:country,
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 23,),
//
//               Align(
//                   alignment: Alignment.centerLeft,
//                   child:Text("Group", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18, color: Colors.white),)
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(7.0),
//                   border: Border.all(color: Colors.white),color: Color.fromARGB(50, 0, 44, 33)),
//                 width: 500,
//                 height: 50,
//                 child: DropdownButtonHideUnderline(
//                   child: DropdownButton(
//                     dropdownColor: Color.fromARGB(500, 0, 30, 50),
//                     style: const TextStyle(
//                       color: Colors.white,
//                     ),
//                     value: _selectedState,
//                     onChanged: (newValue){
//                       print(newValue);
//                       setState(() {
//                         print(newValue);
//                         _cities=[];
//                         CityDependentDropDown(newValue);
//
//                         _selectedState="$newValue";
//                       });
//
//                     },
//                     items:_states.map((state){
//                       return DropdownMenuItem(
//                         child: new Text(state),
//                         value:state,
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }


































// //
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:second_pro/api/student.dart';
//
// void main() {
//   runApp(const TimetablePage());
// }
//
// class TimetablePage extends StatelessWidget {
//   const TimetablePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: " ",),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   Student studentService = Student();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//         ),
//         body: Container(
//           child: FutureBuilder<List>(
//             future: studentService.getAllStudent(),
//             builder: (context, snapshot) {
//               print(snapshot.data);
//               if (snapshot.hasData) {
//                 return ListView.builder(
//                     itemCount: snapshot.data?.length,
//                     itemBuilder: (context, i) {
//                       return Card(
//                         child: ListTile(
//                           title: Text(
//                             snapshot.data![i]['stuname'],
//                             style: TextStyle(fontSize: 30.0),
//                           ),
//                           subtitle: Text(
//                             snapshot.data![i]['email'],
//                             style: TextStyle(fontSize: 30.0),
//                           ),
//                         ),
//                       );
//                     });
//               } else {
//                 return const Center(
//                   child: Text('No Data Found.Status code is '),
//                 );
//               }
//             },
//           ),
//         ));
//   }
// }












































