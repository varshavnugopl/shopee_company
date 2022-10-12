import 'package:flutter/material.dart';
import 'package:shopee_business/select_typeof_busines.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 320,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Username',
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: .5, color: Colors.black)),
                      ),
                    )),
                Container(
                  padding: const EdgeInsets.only(top: 25),
                  width: 320,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: .5, color: Colors.black)),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    child: const Text('Login')),
                Padding(
                  padding: const EdgeInsets.only(top: 190),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BusinessType()));
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(320, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      child: const Text('Register New Company')),
                )
              ],
            )),
      ),
    );
  }
}