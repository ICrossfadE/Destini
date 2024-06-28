import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'story_brain.dart';

StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  void showNextPartStory(bool variant) {
    return setState(() {
      storyBrain.nextPart(variant);
    });
  }

  bool getButtonColor() {
    if (storyBrain.getStatusIndexStory() == 3 ||
        storyBrain.getStatusIndexStory() == 4 ||
        storyBrain.getStatusIndexStory() == 5) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.png'), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain.getStory(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Visibility(
                    visible: getButtonColor(),
                    child: TextButton(
                      onPressed: () {
                        showNextPartStory(true);
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Colors.blue)),
                      child: Text(
                        storyBrain.getChoice1(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    showNextPartStory(false);
                  },
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.red)),
                  child: Text(
                    storyBrain.getChoice2(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
