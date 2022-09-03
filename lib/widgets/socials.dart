import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Socials extends StatefulHookConsumerWidget {
  const Socials({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<Socials> createState() => _SocialsState();
}

class _SocialsState extends ConsumerState<Socials>
    with TickerProviderStateMixin {
  final facebookOpacityNotifier = ValueNotifier(0.0);
  late final AnimationController _instaController = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..forward();
  late final AnimationController _facebookController = AnimationController(
    duration: const Duration(milliseconds: 1000),
    vsync: this,
  )..forward();
  late final AnimationController _linkedinController = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..forward();
  late final AnimationController _githubController = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..forward();
  late final Animation<Offset> _instaOffsetAnimation = Tween<Offset>(
    // begin: const Offset(-25.0, 0.0),
    begin: const Offset(0.0, -20.0),
    end: const Offset(0, 0.0),
  ).animate(CurvedAnimation(
    parent: _instaController,
    curve: Curves.easeInToLinear,
  ));
  late final Animation<Offset> _linkedinOffsetAnimation = Tween<Offset>(
    begin: const Offset(-20.0, 0.0),
    end: const Offset(0, 0.0),
  ).animate(CurvedAnimation(
    parent: _linkedinController,
    curve: Curves.elasticInOut,
  ));
  late final Animation<Offset> _facebookOffsetAnimation = Tween<Offset>(
    begin: const Offset(5.0, 0.0),
    end: const Offset(0, 0.0),
  ).animate(CurvedAnimation(
    parent: _facebookController,
    curve: Curves.elasticIn,
  ));
  late final Animation<Offset> _githubOffsetAnimation = Tween<Offset>(
    begin: const Offset(0.0, 20.0),
    end: const Offset(0, 0.0),
  ).animate(CurvedAnimation(
    parent: _githubController,
    curve: Curves.easeInToLinear,
  ));

  @override
  void dispose() {
    _instaController.dispose();
    _facebookController.dispose();
    _linkedinController.dispose();
    _githubController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _startFacebookAnimation();
  }

  void _startFacebookAnimation() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      facebookOpacityNotifier.value = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        left: 50.0,
      ),
      child: Column(
        children: [
          SizedBox(
            height: screenSize.height / 4.1,
          ),
          SlideTransition(
            position: _instaOffsetAnimation,
            child: InkWell(
              hoverColor: Colors.grey[600],
              child: Container(
                decoration: const BoxDecoration(),
                child: const FaIcon(
                  FontAwesomeIcons.instagram,
                  size: 32,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SlideTransition(
            position: _linkedinOffsetAnimation,
            child: InkWell(
              hoverColor: Colors.grey[600],
              child: Container(
                decoration: const BoxDecoration(),
                child: const FaIcon(
                  FontAwesomeIcons.linkedin,
                  size: 32,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SlideTransition(
            position: _facebookOffsetAnimation,
            child: ValueListenableBuilder<double>(
                valueListenable: facebookOpacityNotifier,
                builder: (context, value, child) {
                  return AnimatedOpacity(
                    opacity: value,
                    duration: const Duration(
                      milliseconds: 1000,
                    ),
                    child: InkWell(
                      hoverColor: Colors.grey[600],
                      child: Container(
                        decoration: const BoxDecoration(),
                        child: const FaIcon(
                          FontAwesomeIcons.facebookSquare,
                          size: 32,
                        ),
                      ),
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 30,
          ),
          SlideTransition(
            position: _githubOffsetAnimation,
            child: InkWell(
              hoverColor: Colors.grey[600],
              child: Container(
                decoration: const BoxDecoration(),
                child: const FaIcon(
                  FontAwesomeIcons.githubSquare,
                  size: 32,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
