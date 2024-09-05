import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class VideoPost extends StatelessWidget {
  final String videoContent = "This is a sample video post.";

  Future<void> _sharePost(BuildContext context) async {
    String url = "https://yourwebsite.com/video-post";
    Share.share("Check out this post: $url");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.video_library, size: 100),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => _sharePost(context),
          child: Text('Share Video Post'),
        ),
      ],
    );
  }
}