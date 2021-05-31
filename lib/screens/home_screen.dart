import 'package:animation_list/models/movies.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    Key? key,
    this.title,
  }) : super(key: key);
  final String? title;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ListView.builder(
            controller: _scrollController,
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 40.0,
            ),
            scrollDirection: Axis.vertical,
            itemCount: moviesList.length,
            itemBuilder: (context, index) {
              return AnimatedBuilder(
                animation: _scrollController,
                builder: (context, child) {
                  final itemPositionOffset = index * 100;
                  final difference =
                      _scrollController.offset - itemPositionOffset;
                  final percent = 1 - (difference / 100);
                  double opacity = percent;
                  double scale = percent;
                  if (opacity > 1.0) opacity = 1.0;
                  if (opacity < 0.0) opacity = 0.0;
                  if (percent > 1) scale = 1.0;
                  return Align(
                    heightFactor: .5,
                    child: Opacity(
                      opacity: opacity,
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()..scale(scale, 1.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 200.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Card(
                              shadowColor: Colors.red,
                              elevation: 5.0,
                              child: Image.asset(
                                moviesList[index].imgUrl!,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
