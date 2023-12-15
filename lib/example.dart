import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedCountry="301";
  var country={
    '101LAB':'Example',
    '105':'Example',
    '107':'Example',
    '201':'Example',
    '203':'Example',
    '204':'Example',
    '205':'Example',
    '206':'Example',
    '207':'Example',
    '301':'Example',
    '302AB':'Example',
    '303':'Example',
    '303AB':'Example',
    '304':'Example',
    '305':'Example',
    '305AB_LAB':'Example',
    '306':'Example',
    '307':'Example',
    '402AB':'Example',
    '403AB':'Example',
    '404AB':'Example',
    'B1 Auditorium':'Example',
    'Blue Hall':'Example',
    'GREEN HALL':'Example',
    'Grey Hall':'CE',
    'Yellow Hall':'CE',
    'Conference Hall':'CE',
    'Excursion':'CE',
    'Field work':'CE',
    'INNO TECHNOPARK':'CE',
    'LAB401':'CE',
    'LAB403':'CE',
    'LAB405':'CE',
    'LAB406':'CE',
    'LAB407':'CE',
    'Library':'CE',
    'Library down centre':'CE',
    'Library low':'CE',
    'Library up':'CE',
    'Library up.right':'CE',
    'Library up.left':'CE',
    "MECHATRONICS" : 'CE',
    "lms online":'CE',
    'RECORDED':'CE',
    'Technopark':'CE',
    'TTZ Lab':'CE',
    'Virtual Classrom':'CE',
    'Yard Library':'CE',
    '602AB Advising hour':'CE',
    '402AB Advising hour':'CE',
  };

  List _countries=[];
  CountryDependentDropDown(){
    country.forEach((key, value) {
      _countries.add(key);
    });
  }

  String _selectedState="";
  var state= {
    'G1': 'PE',
  };

  List _states=[];
  StateDependentDropDown(countryShortName){
    state.forEach((key, value) {
      if(countryShortName==value){
        _states.add(key);
      }

    });
    _selectedState= _states[0];
  }

  String _selectedCity="";
  var city={'Ranchi':'Jharkhand','Tata':'Jharkhand','Quetta':'Baluchistan','Ludhiana':'Panjab','Amritsar':'Panjab'};

  List _cities=[];
  CityDependentDropDown(stateShortName){
    city.forEach((key, value) {
      if(stateShortName==value){
        _cities.add(key);
      }

    });
    _selectedCity= _cities[0];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CountryDependentDropDown();
  }
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image/classroom_back.jpg"),
              fit: BoxFit.cover
          ),
        ),
        //  margin:EdgeInsets.all(15),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 23,),
              Align(
                alignment: Alignment.centerLeft,
                child:Text("Example",  style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18, color: Colors.black)),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  border: Border.all(color: Colors.white),color: Color.fromARGB(90, 30, 44, 33),),
                width: 500,
                height: 50,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    dropdownColor: Color.fromARGB(500, 0, 30, 50),
                    style: const TextStyle(
                      color: Colors.white,

                    ),
                    value: _selectedCountry,
                    onChanged: (newValue){
                      setState(() {
                        _cities=[];
                        _states=[];
                        StateDependentDropDown(country[newValue]);
                        _selectedCountry="$newValue";
                      });
                    },
                    items:_countries.map((country){
                      return DropdownMenuItem(
                        child: new Text(country),
                        value:country,
                      );
                    }).toList(),
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}