import 'package:flutter/material.dart';
import 'package:template/base/app/config/app_constants.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar(
      {super.key, required this.selected, required this.onChange});

  final String selected;
  final Function onChange;
  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar>
    with TickerProviderStateMixin {
  @override
  void initState() {
    _controllers = List.generate(
      4,
      (index) => AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 200),
      ),
    );
    _animations = List.generate(
        4,
        (index) => TweenSequence(<TweenSequenceItem<double>>[
              TweenSequenceItem(
                tween: Tween(begin: 0.8, end: 0.95),
                weight: 50,
              ),
              TweenSequenceItem(
                tween: Tween(begin: 0.95, end: 0.8),
                weight: 50,
              ),
            ]).animate(_controllers[index])
              ..addListener(() {
                setState(() {});
              }));
    super.initState();
  }

  late List _controllers;

  List title = ['home', 'tour', 'nearby', 'boarding'];

  late List _animations;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
        color: primary,
      ),
      child: Row(
        children: [
          ...title.map(
            (e) => Expanded(
              child: IconButton(
                isSelected: widget.selected == e ? true : false,
                onPressed: () {
                  final obj =
                      _controllers[title.indexOf(e)] as AnimationController;
                  obj.forward().whenComplete(() => obj.reset());
                  widget.onChange(e);
                },
                icon: Transform.scale(
                    scale: _animations[title.indexOf(e)].value,
                    child: widget.selected == e
                        ? Image.asset('assets/images/$e.png')
                        : Image.asset('assets/images/$e-w.png')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
