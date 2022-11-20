import 'package:dictionary/data/food_model.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CookingDetails extends StatefulWidget {
  const CookingDetails({super.key, required this.cookingDetails});

  final FoodModel cookingDetails;

  @override
  State<CookingDetails> createState() => _CookingDetailsState();
}

class _CookingDetailsState extends State<CookingDetails> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
      widget.cookingDetails.videoUrls,
    );
    _initializeVideoPlayerFuture = _controller.initialize();

    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Cooking',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {
                        howToCookVideo(context);
                      },
                      icon: const Icon(
                        Icons.play_circle,
                        color: Colors.green,
                        size: 40,
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: widget.cookingDetails.preparationSteps.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('${index + 1}'),
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              decoration: const BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(color: Colors.green, width: 3),
                                ),
                              ),
                              height: 50,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 8),
                              margin: const EdgeInsets.only(bottom: 8),
                              width: MediaQuery.of(context).size.width * 0.87,
                              height: 50,
                              child: Text(
                                widget.cookingDetails.preparationSteps[index],
                                overflow: TextOverflow.visible,
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void howToCookVideo(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) => AlertDialog(
            title: const Text('How to...'),
            backgroundColor: Colors.transparent,
            actions: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  children: [
                    FutureBuilder(
                      future: _initializeVideoPlayerFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: VideoPlayer(_controller),
                          );
                        } else {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                      },
                    ),
                    Center(
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            // pause
                            if (_controller.value.isPlaying) {
                              _controller.pause();
                            } else {
                              // play
                              _controller.play();
                            }
                          });
                        },
                        icon: Icon(
                          _controller.value.isPlaying
                              ? Icons.pause_circle_filled
                              : Icons.play_circle_fill_rounded,
                          color: Colors.white,
                          size: 60,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
