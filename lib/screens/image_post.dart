import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ImagePost extends StatelessWidget {
  final String imageContent = "This is a sample image post.";

  Future<void> _sharePost(BuildContext context) async {
    String url = "https://yourwebsite.com/image-post";
    Share.share("Check out this post: $url");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.image, size: 100),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => _sharePost(context),
          child: Text('Share Image Post'),
        ),
      ],
    );
  }
}