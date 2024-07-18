import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:web_test/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<void> initializeVideoPlayerFuture;

  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset('assets/video/background.mp4');
    controller.setLooping(true);
    controller.setVolume(0);
    controller.play();
    initializeVideoPlayerFuture = controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
        future: initializeVideoPlayerFuture,
        builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        return Stack(
          children: [
            SizedBox.expand(child: FittedBox(fit: BoxFit.cover, child: SizedBox(width: controller.value.size.width,
              height: controller.value.size.height,
              child: VideoPlayer(controller),),),),
            Center(child: Container(child: SingleChildScrollView(child: Column(children: [
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(),));
              }, child: Text("asdasdasd")),
              Text("Text1"),
              Text("Textzxczc1"),
              Text("Text1"),
              Text("Text1"),
              Text("Texqweqwet1"),
              Text("Text1"),
              Text("Text1"),
              Text("Texasvat1"),
              Text("Text1"),
              Text("Texzxct1"),
              Text("Text1zxv"),
              Text("Text1asd"),

            ],))))
          ],
        );
      }else{
        return Center(
          child: CircularProgressIndicator(
            strokeCap: StrokeCap.round,
          ),
        );

      }
    }));
  }
}