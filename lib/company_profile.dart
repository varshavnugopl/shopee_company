import 'package:flutter/material.dart';
import 'package:shopee_business/add_edit.dart';
import 'package:shopee_business/update_shp_detail.dart';

class CompanyProfile extends StatefulWidget {
  const CompanyProfile({super.key});

  @override
  State<CompanyProfile> createState() => _CompanyProfileState();
}

class _CompanyProfileState extends State<CompanyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      onSurface: Colors.white,
                                      shadowColor: Colors.white,
                                      minimumSize: const Size(10, 130),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                  child: const SizedBox(
                                    width: 100,
                                    child: Text('Shop Image',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w900)),
                                  )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, bottom: 30),
                              child: SizedBox(
                                width: 100,
                                child: Text('Shop Name',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w900)),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const UpdateShopDetails()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      onSurface: Colors.white,
                                      shadowColor: Colors.white,
                                      minimumSize: const Size(10, 110),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                  child: const SizedBox(
                                    width: 150,
                                    child: Text('Update Shop Details',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w900)),
                                  )),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AddOrEditProduct(
                                                    title: 'Add Product')));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      onSurface: Colors.white,
                                      shadowColor: Colors.white,
                                      minimumSize: const Size(10, 110),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                  child: const SizedBox(
                                    width: 150,
                                    child: Text('Add Product',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w900)),
                                  )),
                            ],
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AddOrEditProduct(
                                                    title: 'Edit Product')));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      onSurface: Colors.white,
                                      shadowColor: Colors.white,
                                      minimumSize: const Size(10, 110),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                  child: const SizedBox(
                                    width: 150,
                                    child: Text('Edit Product',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w900)),
                                  )),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      onSurface: Colors.white,
                                      shadowColor: Colors.white,
                                      minimumSize: const Size(10, 110),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                  child: const SizedBox(
                                    width: 150,
                                    child: Text('Show Product',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w900)),
                                  ))
                            ]),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        onSurface: Colors.white,
                                        shadowColor: Colors.white,
                                        minimumSize: const Size(10, 110),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5))),
                                    child: const SizedBox(
                                      width: 150,
                                      child: Text('Show Order',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w900)),
                                    )),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        onSurface: Colors.white,
                                        shadowColor: Colors.white,
                                        minimumSize: const Size(10, 110),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5))),
                                    child: const SizedBox(
                                      width: 150,
                                      child: Text('Share Company',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w900)),
                                    ))
                              ]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 120,
                    width: 400,
                    child: Card(
                      child: Center(
                          child: Text('Admin Notification Flash',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w900))),
                    ),
                  )
                ],
              ))),
    );
  }
}
