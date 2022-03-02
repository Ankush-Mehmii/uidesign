import 'package:flutter/material.dart';
import 'package:chatui/constants/decoration.dart' as decoration;
import 'package:chatui/constants/textstyle.dart' as style;

class MessageTile extends StatelessWidget {
  const MessageTile({
    Key? key,
    @required this.message,
    @required this.color,
    @required this.alignment,
  }) : super(key: key);
  final String? message;
  final Color? color;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
      child: Align(
        alignment: alignment!,
        child: Container(
          decoration: decoration.messageTileDecoration(color!),
          padding: const EdgeInsets.all(16),
          child: Text(
            message!,
            style: style.black14Reg,
          ),
        ),
      ),
    );
  }
}
