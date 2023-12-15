import 'package:country_calling_code_picker/picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

void main() {
  runApp(SettingsPage());
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Country? _selectedCountry;
  final TextEditingController _numberCtrl = TextEditingController();



  @override
  void initState() {
    initCountry();
    super.initState();
    _numberCtrl.text = '';
  }

  void initCountry() async {
    final country = await getDefaultCountry(context);
    setState(() {
      _selectedCountry = country;
    });
  }

  @override
  Widget build(BuildContext context) {
    final country = _selectedCountry;
    return Scaffold(
      appBar: AppBar(
        title: Text('Call Turin'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            country == null
                ? Container()

                : Column(

              children: <Widget>[
                Image.asset(
                  country.flag,
                  package: countryCodePackageName,
                  width: 50,
                ),
                SizedBox(
                  height: 16,
                ),
                Text("${country.callingCode} ${country.name}"),
                SizedBox(
                  height: 10,
                ),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              child: Text('Select country'),
              color: Colors.amber,
              onPressed: _onPressed,
            ),
            SizedBox(height: 24,),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _numberCtrl,
                    decoration: const InputDecoration(labelText: "Phone Number"),
                    keyboardType: TextInputType.number,
                  ),
                ),
                ElevatedButton(
                  child: const Text("Call"),
                  onPressed: () async {
                    FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
                  },
                )
              ],
            ),


          ],
        ),
      ),
    );
  }

  void _onPressed() async {
    final country =
    await Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return PickerPage();
    }));
    if (country != null) {
      setState(() {
        _selectedCountry = country;
      });
    }
  }


}

class PickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Country'),
      ),
      body: Container(
        child: CountryPickerWidget(
          onSelected: (country) => Navigator.pop(context, country),
        ),
      ),
    );
  }
}