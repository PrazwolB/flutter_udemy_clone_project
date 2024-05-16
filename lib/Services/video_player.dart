import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_udemy_clone_project/Services/Constants.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({ Key? key }) : super(key: key);
  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerState();
}
class _VideoPlayerState extends State<VideoPlayerWidget> {
  late VideoPlayerController _videoPlayerController;
  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"))
      ..initialize().then((_) {
        setState(() {});
        _videoPlayerController.play();
      });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            }
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController)
          ),
          const Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all <Color> (kPrimaryColor),
                    fixedSize: MaterialStateProperty.all(const Size(70, 70)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
                  ),
                    onPressed: (){
                      _videoPlayerController.pause();
                    },
                    child: const Icon(Icons.pause),
                ),
                const Padding(padding: EdgeInsets.all(2)),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all <Color> (kPrimaryColor),
                    fixedSize: MaterialStateProperty.all(const Size(70, 70)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
                  ),
                    onPressed: (){
                      _videoPlayerController.play();
                },
                    child: const Icon(Icons.play_arrow),
                ),
              ],
            ),
          ]
        ),
      ),
    );
  }
}