import 'package:flutter/material.dart';

class help extends StatelessWidget {
  const help({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Help',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Description about Blaghaty',style: TextStyle(
                  fontSize: 25,
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
            SizedBox(height: 40),
            Text(
              'Balaghaty is an application that allows citizens to report any violation they see at any place and time whatever the violation is whether: Traffic, Environmental, … etc. '
                  'this is done by: '
                  'Taking a photo of the violation, writing out it. the location of the violation will be directed to the competent authorities to deal with it after confirming the validity of the violation.',
              style: TextStyle(
                fontSize: 18
              ),

            ),
          ],
        ),
      ),
    );
  }
}
