import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mzsp/grid_view.dart';
import 'package:mzsp/video_player.dart';

class AfterSplash extends StatelessWidget {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Moviez Sneak Peek"),
      ),
      body: _bodySquadar(context),
    );
  }

  Widget _bodyGridView(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          return new Center(
            child: Column(
              children: <Widget>[
//                  Image.asset('images/IMG_4348.jpg'),
                new GestureDetector(
                  child: Image.asset('images/IMG_4348.jpg'),
                  onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new VideoPlay(
                            url: "http://youtube.com/embed/oEP9MYAIn_k",
                          ))),
//                  onTap: _playVideo,
                )
              ],
            ),
          );
        }));
  }

  Widget _bodySquadar(BuildContext context) {
    return new StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) => new Container(
          color: Colors.white,
          child: new GestureDetector(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('images/IMG_4348.jpg'),
                  Text('New Trailer'),
                ]),

            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new VideoPlay(
                      url: "http://youtube.com/embed/oEP9MYAIn_k",
                    ))),
//                  onTap: _playVideo,
          )),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index.isEven ? 2 : 1),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }

  Widget _bodyBuildPicture(BuildContext context) {
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('So Cute :'),
            Card(
              child: Column(
                children: <Widget>[
//                  Image.asset('images/IMG_4348.jpg'),
                  new GestureDetector(
                    child: Image.asset('images/IMG_4348.jpg'),
                    onTap: () =>
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new VideoPlay(
                                  url: "http://youtube.com/embed/oEP9MYAIn_k",
                                ))),
//                  onTap: _playVideo,
                  )
                ],
              ),
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ]),
    );
  }
}
