import 'package:flutter/material.dart';

class UpdateShopDetails extends StatefulWidget {
  const UpdateShopDetails({super.key});

  @override
  State<UpdateShopDetails> createState() => _UpdateShopDetailsState();
}

class _UpdateShopDetailsState extends State<UpdateShopDetails> {
  List hint = ['Open Time', 'Close Time', 'Google Location'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 80),
                  child: Text('Update Shop\nDetails',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900)),
                ),
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              decoration: InputDecoration(
                            hintText: '${hint[index]}',
                            enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: .5, color: Colors.black)),
                          )),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
