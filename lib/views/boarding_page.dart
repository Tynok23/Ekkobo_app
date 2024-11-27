import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kobo_app/view_models/boarding_provider.dart';
import 'package:kobo_app/views/registration/welcome.dart';
import 'package:provider/provider.dart';


class BoardingPage extends StatefulWidget {
  @override
  _BoardingPageState createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;



  @override
  void initState() {
    super.initState();
    // Automatically transition to the next page every 5 seconds
    WidgetsBinding.instance.addPostFrameCallback((_) {
    var onboardingProvider = Provider.of<BoardingProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < onboardingProvider.onboardingData.length - 1)  {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Consumer<BoardingProvider>(
        builder: (context,enochData,wget) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context); // Close the bottom sheet
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => WelcomePage()),
                            );
                          },
                          child: Text('Skip',
                            style: TextStyle(
                              fontFamily: 'Caros',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),),
                        ),
                      ],
                    ),
                    Expanded(
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: enochData.onboardingData.length,
                        onPageChanged: (int page) {
                          enochData.setCurrentPage(page);
                        },
                        itemBuilder: (context, index) {
                          return OnboardingPage(
                            description: enochData.onboardingData[index]['description']!,
                            image: enochData.onboardingData[index]['image']!,
                            wordsToHighlight: enochData.highlightedWords[index],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        enochData.onboardingData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),
                    SizedBox(height: 50),
                    GestureDetector(
                      onTap: () {
                        Provider.of<BoardingProvider>(context, listen: false)
                            .takeMeToWelcomePageAfterPressing(context);
                      },
                      child: Container(
                        height: 58,
                        width: 336,
                        color:Color(0xFF170AF5),
                        child: Center(
                          child: Text('Get Started',
                            style: TextStyle(
                             color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                                fontFamily: 'Ubuntu'
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),

                  ]),
            ),
          );

        }));
  }

  Widget buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 5,
      width: _currentPage == index ? 30 : 30,
      decoration: BoxDecoration(
        color: _currentPage == index ? Color(0xFF170AF5) : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {

  final String description;
  final String image;
  final List<String> wordsToHighlight;
  final Color highlightColor;

  const OnboardingPage({

    required this.description,
    required this.image,
    required this.wordsToHighlight,
    this.highlightColor = const Color(0xFF170AF5),
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(image),
          height: 300,
          width: 327,
          alignment: Alignment.center,
        ),
        SizedBox(height: 20),

        RichText(
          textAlign: TextAlign.center,
          text: buildHighlightedText(description, wordsToHighlight, highlightColor),
        ),
      ],
    );
  }

  TextSpan buildHighlightedText(String text, List<String> highlights, Color highlightColor) {
    List<TextSpan> spans = [];
    int lastIndex = 0;

    for (String word in highlights) {
      int wordIndex = text.indexOf(word, lastIndex);

      if (wordIndex == -1) continue; // Skip if word is not found


      if (wordIndex > lastIndex) {
        spans.add(TextSpan(text: text.substring(lastIndex, wordIndex)));
      }

      spans.add(TextSpan(
        text: word,
        style: TextStyle(
          color: highlightColor,
          fontWeight: FontWeight.bold, fontFamily: 'Ubuntu'
        ),
      ));

      lastIndex = wordIndex + word.length;
    }

    if (lastIndex < text.length) {
      spans.add(TextSpan(text: text.substring(lastIndex)));
    }

    return TextSpan(
      style: TextStyle(
        color: Color(0xFF1C1A1A),
        fontSize: 32,
          fontFamily: 'Ubuntu'
      ),
      children: spans,
    );
  }
}