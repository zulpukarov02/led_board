import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:led_board/components/ButtonCusstom.dart';
import 'package:led_board/utils/color_constants.dart';
import 'package:marquee/marquee.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  _DetailsViewState createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  final List<Color> categories = [
    Colors.amber,
    Colors.red,
    Colors.deepOrange,
    Colors.purple,
    Colors.white70,
    Colors.pink,
    Colors.green,
    Colors.blue,
    Colors.amberAccent,
    Colors.green,
  ];
  Color? color;
  final TextEditingController _textController = TextEditingController();

  final List<TextStyle> fonts = [
    GoogleFonts.aBeeZee(),
    GoogleFonts.roboto(),
    GoogleFonts.adamina(),
    GoogleFonts.mrDeHaviland(),
    GoogleFonts.snippet(),
    GoogleFonts.poppins(),
    GoogleFonts.raleway(),
    GoogleFonts.openSansCondensed(),
    GoogleFonts.robotoMono(),
    GoogleFonts.sourceSansPro(),
    GoogleFonts.quicksand(),
    GoogleFonts.oswald(),
    GoogleFonts.playfairDisplay(),
    GoogleFonts.merriweather(),
    GoogleFonts.nunito(),
    GoogleFonts.lato(),
    GoogleFonts.openSans(),
    GoogleFonts.notoSans(),
    GoogleFonts.montserrat(),
    GoogleFonts.crimsonText(),
  ];

  TextStyle? textStyle;
  String? titleTextField;

  bool get isTextEmpty => _textController.text.isEmpty;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 29, 61),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: TextField(
                controller: _textController,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Записать текст',
                  hintStyle: textStyle != null
                      ? textStyle?.copyWith(
                          color: color ?? Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                        )
                      : TextStyle(
                          color: color ?? Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                        ),
                ),
                style: textStyle != null
                    ? textStyle?.copyWith(
                        color: color ?? Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                      )
                    : TextStyle(
                        color: color ?? Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                      ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: size.height * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: buildTextDisplay(_textController.text, textStyle, color),
            ),
            const SizedBox(height: 25),
            const NavigateButton(),
            const SizedBox(height: 25),
            Container(
              width: size.width * 0.96,
              height: size.height * 0.54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 8, 9, 54),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Svet",
                      // textAlign: TextA,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppConstantsColor.lightTextColor),
                    ),
                    // CateGoriesColorIndex(size: size, categories: categories),
                    Container(
                      margin: const EdgeInsets.all(3),
                      width: size.width,
                      height: 58,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: categories.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          final itemColor = categories[index];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  color = itemColor;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: categories[index],
                                ),
                                width: 40,
                                height: 60,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "HD Led",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: AppConstantsColor.lightTextColor,
                      ),
                    ),
                    ButtonCusstom(
                      textLRC: "Bykl",
                      textLRC2: 'Bkl',
                    ),
                    const Text(
                      "Shrift",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppConstantsColor.lightTextColor),
                    ),
                    Container(
                      margin: const EdgeInsets.all(3),
                      width: double.infinity,
                      height: 58,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: fonts.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          final item = fonts[index];

                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  textStyle = item;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.amber,
                                ),
                                height: 60,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'AaB',
                                      style: item,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Razmer",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: AppConstantsColor.lightTextColor,
                      ),
                    ),
                    ButtonCusstom(textLRC: "50%", textLRC2: "100%")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextDisplay(String? title, TextStyle? textStyle, Color? color) {
    return Center(
      child: isTextEmpty
          ? Text(
              "Bystryi Peresmotr",
              style: textStyle != null
                  ? textStyle.copyWith(
                      color: color ?? Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    )
                  : TextStyle(
                      color: color ?? Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    ),
            )
          : Marquee(
              text: title ?? '',
              style: textStyle != null
                  ? textStyle.copyWith(
                      color: color ?? Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    )
                  : TextStyle(
                      color: color ?? Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    ),
              scrollAxis: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              blankSpace: MediaQuery.of(context).size.width * 0.3,
              velocity: 30,
            ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}

class NavigateButton extends StatelessWidget {
  const NavigateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 1, 15, 32),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          ),
          onPressed: () {},
          icon: const Icon(Icons.check),
          label: const Text("Soxranit"),
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 1, 15, 32),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          ),
          onPressed: () {},
          icon: const Icon(Icons.cloud_sharp),
          label: const Text("Predposmotr"),
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 1, 15, 32),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          ),
          onPressed: () {},
          icon: const Icon(Icons.bolt),
          label: const Text("Otmena"),
        ),
      ],
    );
  }
}
