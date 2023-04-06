import 'package:agora_demo_app/common/app_utils.dart';
import 'package:agora_demo_app/video_call_page.dart';
import 'package:agora_demo_app/widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHost = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomElevatedButton(
              textBtn: "Video call",
              onTap: () async {
                [Permission.microphone, Permission.camera]
                    .request()
                    .then((value) {
                  navigateTo(context,
                      VideoCall(title: "Video calling", isHost: isHost));
                });
              },
            ),
            CustomElevatedButton(
              textBtn: "Audio call",
              onTap: () {
                [Permission.microphone, Permission.camera]
                    .request()
                    .then((value) {
                  navigateTo(
                      context, VideoCall(title: "Audio call", isHost: isHost));
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
