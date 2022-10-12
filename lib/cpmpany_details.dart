import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopee_business/splash_screen.dart';

class CmpanyDetails extends StatefulWidget {
  const CmpanyDetails({Key? key}) : super(key: key);

  @override
  State<CmpanyDetails> createState() => _CmpanyDetailsState();
}

class _CmpanyDetailsState extends State<CmpanyDetails> {
  List<String> names = [
    'COMPANY NAME',
    'CONTACT NO',
    'USER NAME',
    'PASSWORD',
    'E MAIL',
    'PANCHAYATH/MUNCIPALITY',
    'DISTRICT',
    'STATE',
    'COUNTRY'
  ];

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      ListView.builder(
          padding: EdgeInsets.all(10.0),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.width / 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: '${names[index]}',
                      enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: .6, color: Colors.black)),
                    ),
                  ),
                ],
              ),
            );
          }),
      Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          alignment: Alignment.bottomCenter,
          child: RaisedButton(
            textColor: Colors.white,
            color: Colors.black,
            child: const Text('submit'),
            onPressed: () {
              Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                 SplashScreen()));
            },
          ))
    ])));
  }
}
