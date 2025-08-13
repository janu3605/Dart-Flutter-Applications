import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:finale_music/constants/colors.dart';
import 'package:flutter/material.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  _MusicPlayerState createState() => _MusicPlayerState();
  
}

class _MusicPlayerState extends State<MusicPlayer> {
  Color songColor = const Color.fromARGB(255, 12, 44, 92);
  String artistName = "Weekend";
  String songName = "Starboy";
  String musicTrackId = "assets/song";
  /* final player = AudioPlayer(); */
  late MusicPlayer _musicPlayer;

  @override
  void initState() {
    /* player.play(UrlSource(musicTrackId)); */
    super.initState();
    _musicPlayer = const MusicPlayer()..setAsset('assets/songs/star.mp3');
    }

  @override
  void dispose() {
    _musicPlayer.dispose();
    super.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      
      /* backgroundColor: songColor, */
      body: Container(
        decoration: const BoxDecoration(gradient: LinearGradient(colors: [Color.fromARGB(255, 12, 44, 92),Color.fromARGB(255, 2, 4, 6)])),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      color: Colors.white,
                    ),
                    Text(
                      "PLAYING SONG",
                      style:
                          textTheme.bodyMedium?.copyWith(color: Colors.white70),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
                Expanded(
                    flex: 2,
                    child: Center(
                      child: Image.asset('assets/banner/Starboy banner.png'),
                    /*   child: ArtWork(
                          
                              ), */
                    )),
                Expanded(
                    child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(songName,
                                style: textTheme.titleLarge
                                    ?.copyWith(color: Colors.white)),
                            Text(artistName,
                                style: textTheme.titleMedium
                                    ?.copyWith(color: Colors.white60))
                          ],
                        ),
                        const Icon(
                          Icons.favorite,
                          color: CustomColors.primaryColor,
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    ProgressBar(
                      progress: const Duration(minutes: 1),
                      total: const Duration(minutes: 3, seconds: 30),
                      bufferedBarColor: Colors.white38,
                      baseBarColor: Colors.white10,
                      thumbColor: Colors.white,
                      timeLabelTextStyle: const TextStyle(color: Colors.white),
                      progressBarColor: Colors.white,
                      onSeek: (duration) {
                        print('User selected a new time: $duration');
                      },
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.lyrics_outlined,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.skip_previous,
                              color: Colors.white,
                              size: 36,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_circle,
                              color: Colors.white,
                              size: 40,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.skip_next,
                              color: Colors.white,
                              size: 36,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.loop,
                              color: CustomColors.primaryColor,
                            )),
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Controls extends StatelessWidget {
  const Controls({super.key, required this.audioPlayer});
  @override
  Widget build(BuildContext context){
    return StreamBuilder(stream: audioPlayer.playerStream, builder: builder)
  }
}
