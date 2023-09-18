import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:led_board/navigate.dart';
import 'package:led_board/utils/color_constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppConstantsColor.darkTextColor,
      appBar: AppBar(
        backgroundColor: AppConstantsColor.darkTextColor,
        elevation: 0,
        title: const Text("Led Board"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainNavigator(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextLiquidFill(
                text: 'Welcome To LedBoard!',
                waveColor: Colors.red,
                boxBackgroundColor: Colors.black,
                waveDuration: Duration(seconds: 19),
                loadDuration: Duration(seconds: 4),
                textStyle: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                boxWidth: size.width * 0.9,
                boxHeight: size.height * 0.09,
              ),
            ),
          ),
          SizedBox(height: size.height / 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text("Dobavit"),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                onPressed: () {},
                icon: Icon(Icons.workspace_premium_outlined),
                label: Text("Premium"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
