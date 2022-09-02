import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(
            width: 30,
          ),
          const Expanded(
            flex: 4,
            child: SizedBox(),
          ),
          Expanded(
            flex: 9,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomPaint(
                  painter: PartialPainter(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 11, 141, 61),
                        Color.fromARGB(255, 153, 35, 6),
                        Color.fromARGB(255, 134, 34, 8),
                        Color.fromARGB(255, 6, 153, 153),
                      ],
                    ),
                    radius: 5,
                    strokeWidth: 1,
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 5,
                    ),
                    padding: const EdgeInsets.only(
                      bottom: 8,
                    ),
                    // decoration: const BoxDecoration(
                    //   border: Border(
                    //     left: BorderSide(
                    //       color: Colors.cyan,
                    //     ),
                    //   ),
                    // ),
                    alignment: Alignment.bottomCenter,
                    child: RichText(
                      text: const TextSpan(
                        text: 'P',
                        style: TextStyle(
                          color: Color(0xff333333),
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                        children: [
                          TextSpan(
                            text: ', Purushottam.',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.90,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    bottom: 8,
                    left: 30,
                    right: 30,
                  ),
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    'Work.',
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    bottom: 8,
                    left: 30,
                    right: 30,
                  ),
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    'Me.',
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    bottom: 8,
                    left: 30,
                    right: 30,
                  ),
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    'Get in Touch.',
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 4,
            child: SizedBox(),
          ),
          const SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }
}

class PartialPainter extends CustomPainter {
  PartialPainter({
    required this.radius,
    required this.strokeWidth,
    required this.gradient,
  });

  final Paint paintObject = Paint();
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  @override
  void paint(Canvas canvas, Size size) {
    Rect topLeftTop = Rect.fromLTRB(
      -30,
      12,
      size.height,
      14,
    );
    Rect topLeftLeft = Rect.fromLTRB(
      -10,
      5,
      -8,
      size.height / 1.25,
    );

    Rect bottomRightBottom = Rect.fromLTRB(
      size.height,
      size.height - 4,
      size.width + (size.height - 15),
      size.height - 2,
    );
    Rect bottomRightRight = Rect.fromLTRB(
      size.width + 8,
      14,
      size.width + 10,
      size.height + 5,
    );

    paintObject.shader = gradient.createShader(Offset.zero & size);

    Path topLeftPath = Path()
      ..addRect(topLeftTop)
      ..addRect(topLeftLeft);

    Path bottomRightPath = Path()
      ..addRect(bottomRightBottom)
      ..addRect(bottomRightRight);

    Path finalPath =
        Path.combine(PathOperation.union, topLeftPath, bottomRightPath);

    canvas.drawPath(finalPath, paintObject);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
