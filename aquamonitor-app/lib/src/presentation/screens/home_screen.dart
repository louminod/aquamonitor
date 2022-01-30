import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool _lightsOn;
  late bool _tempOn;

  @override
  void initState() {
    super.initState();
    _lightsOn = false;
    _tempOn = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          const Flexible(
            flex: 3,
            child: Center(
              child: Text(
                "27.5°C",
                style: TextStyle(fontSize: 80),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _lightsOn = !_lightsOn;
                    });
                  },
                  child: Image.asset(
                    _lightsOn ? "assets/img/lights_on.png" : "assets/img/lights_off.png",
                    width: 150,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _tempOn = !_tempOn;
                    });
                  },
                  child: Image.asset(
                    _tempOn ? "assets/img/temperature_on.png" : "assets/img/temperature_off.png",
                    width: 150,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
