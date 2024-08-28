import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                textAlign: TextAlign.center,
                "str_content".tr(),
                style: TextStyle(fontSize: 21, color: Colors.grey[700]),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(11, 0, 11, 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.orange,
                        height: 45,
                        child: TextButton(
                            onPressed: () {
                              context.setLocale(Locale('en', 'US'));
                            },
                            child: Text("English",
                                style: TextStyle(color: Colors.white))),
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.cyan,
                        height: 45,
                        child: TextButton(
                            onPressed: () {
                              context.setLocale(Locale('ko', 'KR'));
                            },
                            child: Text(
                              "Korean",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.pink,
                        height: 45,
                        child: TextButton(
                            onPressed: () {
                              context.setLocale(Locale('ja', 'JP'));
                            },
                            child: Text("Japanese",
                                style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
