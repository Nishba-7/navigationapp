import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class TextPost extends StatelessWidget {
  final String textContent = "This is a sample text post.";

  Future<void> _sharePost(BuildContext context) async {
    String url = "https://yourwebsite.com/text-post";
    Share.share("Check out this post: $url");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(textContent),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => _sharePost(context),
          child: Text('Share Text Post'),
        ),
      ],
    );
  }
}