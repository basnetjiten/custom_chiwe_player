import 'package:flutter/material.dart';

class CenterPlayButton extends StatelessWidget {
  const CenterPlayButton({
    Key? key,
    required this.backgroundColor,
    this.iconColor,
    required this.show,
    required this.isPlaying,
    required this.isFinished,
    this.onPressed,
  }) : super(key: key);

  final Color backgroundColor;
  final Color? iconColor;
  final bool show;
  final bool isPlaying;
  final bool isFinished;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.transparent,
      child: Center(
        child: AnimatedOpacity(
          opacity: show ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 300),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: backgroundColor,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              // Always set the iconSize on the IconButton, not on the Icon itself:
              // https://github.com/flutter/flutter/issues/52980
              child: IconButton(
                iconSize: 70,
                icon: isFinished
                    ? Image.asset(
                        "packages/chewie/assets/play.png",
                        //playing: controller.value.isPlaying,
                      )
                    : Image.asset(
                        "packages/chewie/assets/play.png",
                        //playing: controller.value.isPlaying,
                      ),
                onPressed: onPressed,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
