import 'package:chatui/comments/customUserAvatar.dart';
import 'package:chatui/constants/decoration.dart' as decoration;
import 'package:chatui/constants/textstyle.dart' as style;
import 'package:flutter/material.dart';

class CommentTile extends StatelessWidget {
  const CommentTile(
      {Key? key,
      @required this.comment,
      @required this.userName,
      @required this.userAvatar})
      : super(key: key);
  final String? comment;
  final String? userName;
  final String? userAvatar;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 12.0),
          child: CustomUserAvatar(
            height: 34.0,
            width: 34.0,
            image: userAvatar ?? "",
          ),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                decoration: decoration.commentTileDecoration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(userName!, style: style.black14Med),
                        const Spacer(),
                        PopupMenuButton<dynamic>(
                          elevation: 0.0,
                          padding: const EdgeInsets.all(0.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          itemBuilder: (context) => <PopupMenuItem<dynamic>>[
                            PopupMenuItem<dynamic>(
                              child: Column(
                                children: <Widget>[
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Report Comment",
                                        style: style.black14Reg,
                                      )),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text("Delete Comment",
                                          style: style.black14Reg))
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Text(comment!, style: style.greyMed14),
                    const SizedBox(
                      height: 6.0,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                children: const <Widget>[
                  Text("Like"),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("Reply")
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
