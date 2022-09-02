import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Socials extends StatelessWidget {
  const Socials({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: screenSize.height / 4.1,
        ),
        InkWell(
          hoverColor: Colors.grey[600],
          child: Container(
            decoration: const BoxDecoration(),
            child: const FaIcon(
              FontAwesomeIcons.instagram,
              size: 32,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        InkWell(
          hoverColor: Colors.grey[600],
          child: Container(
            decoration: const BoxDecoration(),
            child: const FaIcon(
              FontAwesomeIcons.linkedin,
              size: 32,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        InkWell(
          hoverColor: Colors.grey[600],
          child: Container(
            decoration: const BoxDecoration(),
            child: const FaIcon(
              FontAwesomeIcons.facebookSquare,
              size: 32,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        InkWell(
          hoverColor: Colors.grey[600],
          child: Container(
            decoration: const BoxDecoration(),
            child: const FaIcon(
              FontAwesomeIcons.githubSquare,
              size: 32,
            ),
          ),
        ),
      ],
    );
  }
}
