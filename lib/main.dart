import 'package:flutter/material.dart';
import 'package:presentaition/ytclone.dart';

import 'bsnl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: YtClone(),
    );
  }
}

class SliverComparisonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sliver vs. ListView Comparison")),
      body: Row(
        children: [
          // SLIVER-BASED SCROLLING (LEFT SIDE)
          Expanded(
            child: CustomScrollView(
              slivers: [
                // SliverAppBar
                SliverAppBar(
                  expandedHeight: 150.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text("Sliver AppBar"),
                    background: Image.network(
                      "https://source.unsplash.com/random",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // SliverPersistentHeader: Sticky Header
                SliverPersistentHeader(
                  pinned: true,
                  delegate: CustomSliverHeaderDelegate(
                    minHeight: 50,
                    maxHeight: 80,
                    child: Container(
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Text(
                        "Sliver Sticky Header",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),

                // SliverList
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (context, index) => Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.orange[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Sliver List Item #$index",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    childCount: 15,
                  ),
                ),

                // SliverGrid
                SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                        (context, index) => Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.teal[200],
                      child: Center(
                        child: Text(
                          "Grid #$index",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                    childCount: 9,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 1.0,
                  ),
                ),
              ],
            ),
          ),

          VerticalDivider(thickness: 2, color: Colors.black),

          // NORMAL LISTVIEW (RIGHT SIDE)
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.purple[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "ListView Item #$index",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Custom Delegate for SliverPersistentHeader
class CustomSliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  CustomSliverHeaderDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(CustomSliverHeaderDelegate oldDelegate) {
    return oldDelegate.minHeight != minHeight ||
        oldDelegate.maxHeight != maxHeight ||
        oldDelegate.child != child;
  }
}
