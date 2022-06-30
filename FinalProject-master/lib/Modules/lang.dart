import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../models/language_model.dart';

class language extends StatefulWidget {
  const language({Key? key}) : super(key: key);

  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language> {
  @override
  String default_val='Select Language';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Language',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage("assets/LLL.jpg"),
                width: 200,
                height: 200,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.0, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,

                ),
                child: DropdownButton(
                  // decoration: InputDecoration(
                  //   border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(15)
                  //   ),
                  // ),
                  hint: Text(
                    default_val,
                    style: TextStyle(
                      fontSize: 18,
                      // fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  items: LanguageModel.languageList()
                      .map<DropdownMenuItem<LanguageModel>>(
                          (lang) => DropdownMenuItem(
                        value: lang,
                        child: Row(
                          children: <Widget>[
                            Text(lang.flag),
                            SizedBox(
                              width: 15,
                            ),
                            Text(lang.name)
                          ],
                        ),
                      ))
                      .toList(),
                  onChanged: (LanguageModel? value) {
                    changeLanguage(value, context);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }





  void changeLanguage(LanguageModel? value, context) {
    Locale local;
    switch (value!.languageCode) {
      case 'en':
        local = Locale(value.languageCode, 'US');
        break;
      case 'ar':
        local = Locale(value.languageCode, 'EG');
        break;
      default:
        local = Locale(value.languageCode, 'US');
        break;
    }
    MyApp.setLocales(context, local);
  }
}
