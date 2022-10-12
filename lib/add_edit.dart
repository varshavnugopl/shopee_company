import 'package:flutter/material.dart';

class AddOrEditProduct extends StatefulWidget {
  String title;
  AddOrEditProduct({super.key, required this.title});

  @override
  State<AddOrEditProduct> createState() => _AddOrEditProductState();
}

class _AddOrEditProductState extends State<AddOrEditProduct> {
  List hint = [
    'Select Item Category',
    'Select Product Category',
    'Company',
    'Model',
    'Qty',
    'Description',
    'Image',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 50),
                  child: Text(widget.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w900)),
                ),
                SizedBox(
                  height: 590,
                  child: ListView.builder(
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              maxLines: index == 5 ? 4 : 1,
                              decoration: InputDecoration(
                                hintText: '${hint[index]}',
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: .5, color: Colors.black)),
                              )),
                        );
                      }),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.black,
                        minimumSize: const Size(150, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text('Save',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w900))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}