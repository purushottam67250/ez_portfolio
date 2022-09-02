import 'dart:ui' as ui;

import 'package:ez_portfolio/widgets/header_widget.dart';
import 'package:ez_portfolio/widgets/socials.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

const String intro =
    '''I am a mobile application developer with over 5 years of experience. I started as a native android app developer with JAVA and Kotlin, later I also worked with react-native for cross-platform development. I switched to flutter when flutter started picking the buzz and have been solely focused on flutter for cross-platform mobile application development for iOS and android platforms since early 2019.\n 
''';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Purushottam Parajuli',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          // This will be applied to the "back" icon
          iconTheme: const IconThemeData(
            color: Colors.red,
          ),
          // This will be applied to the action frames icon buttons that locates on the right side
          actionsIconTheme: const IconThemeData(
            color: Colors.amber,
          ),
          elevation: 0,
          centerTitle: false,
          toolbarTextStyle: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Color(0xff333333),
              fontSize: 14,
            ),
          ),
          titleTextStyle: const TextStyle(
            color: Colors.lightBlueAccent,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.amber,
        toolbarHeight: 45,
        flexibleSpace: const HeaderWidget(),
      ),
      body: Row(
        children: [
          const SizedBox(
            width: 50,
          ),
          const Socials(),
          Expanded(
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: screenSize.width / 2,
                    height: screenSize.width / 3,
                    child: CustomPaint(
                      painter: RPSCustomPainter(),
                      child: Center(
                        child: Container(
                          margin: const EdgeInsets.only(
                            right: 100,
                            top: 50,
                          ),
                          width: screenSize.width / 2,
                          height: screenSize.width / 3,
                          child: Image.asset(
                            'assets/images/worker.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: screenSize.height / 2.80,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 175,
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Crafting excellence\n',
                          style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: 72,
                            fontWeight: FontWeight.w900,
                            height: 1.15,
                          ),
                          children: [
                            TextSpan(
                              text: 'with my machine from\n',
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: 72,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.90,
                                height: 1.15,
                              ),
                            ),
                            TextSpan(
                              text: 'home station.',
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: 72,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.90,
                                height: 1.15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: screenSize.width / 3 + 30,
                  left: (screenSize.width / 2) - 100,
                  right: 100,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: ConstrainedBox(
                          constraints: BoxConstraints.expand(
                            height: screenSize.height / 8,
                            width: screenSize.width,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Flexible(
                                child: Text(
                                  intro,
                                  softWrap: true,
                                  textAlign: ui.TextAlign.justify,
                                  style: TextStyle(
                                    color: Color(0xff333333),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 1.15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          RichText(
                            text: const TextSpan(
                              text: 'Let\'s look into some of my works.',
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                height: 1.15,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const FaIcon(
                            FontAwesomeIcons.circleArrowRight,
                          ),
                        ],
                      ),
                    ],
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

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(118, 40, 80, 112)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint0.shader = ui.Gradient.linear(
        Offset(size.width * 0.15, size.height * 0.54),
        Offset(size.width * 0.78, size.height * 0.54),
        [const Color(0xb6285155), const Color(0xce253f88)],
        [0.00, 1.00]);

    Path path0 = Path();
    path0.moveTo(size.width * 0.2133333, size.height * 0.4760000);
    path0.cubicTo(
        size.width * 0.1497222,
        size.height * 0.5570000,
        size.width * 0.2163889,
        size.height * 0.6930000,
        size.width * 0.2411111,
        size.height * 0.7360000);
    path0.cubicTo(
        size.width * 0.2961111,
        size.height * 0.9525000,
        size.width * 0.3061111,
        size.height * 0.8115000,
        size.width * 0.3722222,
        size.height * 0.8740000);
    path0.cubicTo(
        size.width * 0.4391667,
        size.height * 1.0370000,
        size.width * 0.5297222,
        size.height * 0.9410000,
        size.width * 0.5866667,
        size.height * 0.9260000);
    path0.cubicTo(
        size.width * 0.6391667,
        size.height * 0.9360000,
        size.width * 0.6852778,
        size.height * 0.9080000,
        size.width * 0.7077778,
        size.height * 0.8140000);
    path0.cubicTo(
        size.width * 0.6933333,
        size.height * 0.6075000,
        size.width * 0.7644444,
        size.height * 0.7305000,
        size.width * 0.7833333,
        size.height * 0.5080000);
    path0.cubicTo(
        size.width * 0.7380556,
        size.height * 0.2530000,
        size.width * 0.6841667,
        size.height * 0.4290000,
        size.width * 0.6733333,
        size.height * 0.1840000);
    path0.cubicTo(
        size.width * 0.6088889,
        size.height * 0.0565000,
        size.width * 0.5622222,
        size.height * 0.1735000,
        size.width * 0.5266667,
        size.height * 0.0980000);
    path0.cubicTo(
        size.width * 0.4575000,
        size.height * 0.0375000,
        size.width * 0.4269444,
        size.height * 0.0685000,
        size.width * 0.4011111,
        size.height * 0.1360000);
    path0.cubicTo(
        size.width * 0.3388889,
        size.height * 0.2275000,
        size.width * 0.3522222,
        size.height * 0.1545000,
        size.width * 0.2677778,
        size.height * 0.2380000);
    path0.cubicTo(
        size.width * 0.2108333,
        size.height * 0.2695000,
        size.width * 0.2586111,
        size.height * 0.3395000,
        size.width * 0.2133333,
        size.height * 0.4760000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
