import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _currentValue = 10;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.blue.shade900),
    );
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade900,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0),
                            ),
                            child: Image.asset(
                              'images/img.png',
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.asset(
                                'images/img.png',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              bottomLeft: Radius.circular(12.0),
                            ),
                            child: Image.asset(
                              'images/img.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(0.0),
                            child: SliderTheme(
                              data: SliderThemeData(
                                thumbColor: Colors.white,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 7),
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: Colors.grey.shade300,
                                trackHeight: 1.5,
                              ),
                              child: Slider(
                                value: _currentValue,
                                min: 0,
                                max: 100.0,
                                onChanged: (double value) {
                                  setState(() {
                                    _currentValue = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 24.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '1:28',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Quicksand-Light.ttf',
                                  ),
                                ),
                                Text(
                                  '2:25',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Quicksand-Light.ttf',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'SAAAAAR',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand-Regular.ttf',
                              fontSize: 20.0,
                              letterSpacing: 1.5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 8.0,
                            ),
                            child: Text(
                              'Bhajan',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand-Regular.ttf',
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: Icon(
                        Icons.repeat_sharp,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.skip_previous,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 0),
                          child: Icon(
                            Icons.play_circle_fill,
                            size: 50.0,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.skip_next,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 24.0),
                      child: Icon(
                        Icons.shuffle,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.volume_down,
                            color: Colors.white,
                          ),
                          Expanded(
                            child: SliderTheme(
                              data: SliderThemeData(
                                thumbColor: Colors.white,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 7),
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: Colors.grey.shade300,
                                trackHeight: 1.5,
                              ),
                              child: Slider(
                                value: _currentValue,
                                min: 0,
                                max: 100.0,
                                onChanged: (double value) {
                                  setState(() {
                                    _currentValue = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Icon(
                            Icons.volume_up,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.clear,
                              color: Colors.white,
                            ),
                            Expanded(
                              child: SizedBox(),
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              child: Icon(
                                Icons.library_add,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
