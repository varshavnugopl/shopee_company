import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopee_business/cpmpany_details.dart';

class BusinessType extends StatefulWidget {
  const BusinessType({Key? key}) : super(key: key);

  @override
  State<BusinessType> createState() => _BusinessTypeState();
}

class _BusinessTypeState extends State<BusinessType> {
  List<String> names = ['MANUFACTURE', 'SALES', 'SERVICE', 'TRADE'];

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('select your business type',
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w500)),
          ),
          const SizedBox(height: 20),
          ListView.builder(
              padding: EdgeInsets.all(10.0),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                    onTap: () {
                      (index);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.width / 6,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(320, 50),
                                    primary: Colors.blueAccent, // background
                                    onPrimary: Colors.white, // foreground
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const CmpanyDetails()));
                                  },
                                  child: Text(
                                    '${names[index]}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  )),
                            ]),
                      ),
                    ));
              }),
        ])));
  }
}
