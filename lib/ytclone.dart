import 'package:flutter/material.dart';


class YtClone extends StatefulWidget {
  const YtClone({super.key});

  @override
  State<YtClone> createState() => _YtCloneState();
}

class _YtCloneState extends State<YtClone> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        children: List.generate(5, (index) => ShortsScreen(index: index)),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}

// App Bar Widget
AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: Colors.black,
    elevation: 0,
    title: const Text(
      "Shorts",
      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
    ),
    actions: const [
      Icon(Icons.search, color: Colors.white),
      SizedBox(width: 10),
      Icon(Icons.more_vert, color: Colors.white),
      SizedBox(width: 15),
    ],
  );
}

// Bottom Navigation Bar Widget
BottomNavigationBar _buildBottomNavigationBar() {
  return BottomNavigationBar(
    backgroundColor: Colors.black87,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey,
    type: BottomNavigationBarType.fixed,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
      BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(top: 10),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(child: Icon(Icons.add, size: 25, color: Colors.black)),
          ),
          label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: "Subscriptions"),
      BottomNavigationBarItem(icon: Icon(Icons.video_library), label: "Library"),
    ],
  );
}

// Shorts Screen Widget
class ShortsScreen extends StatelessWidget {
  final int index;
  const ShortsScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
            'https://i.ytimg.com/vi/gUsmO9gjoBE/oar2.jpg',
            fit: BoxFit.cover,
          ),
        ),
        _buildVideoInfo(),
        _buildSidebarButtons(),
        _buildserach(),
        _buildsub(),

      ],
    );
  }
}
Positioned _buildtext()
{
  return Positioned(
      top: 580,
      left: 10,
      child:Text("HI this is yamadasdas ")
  );
}
Positioned _buildsub()
{
  return  Positioned(
      top: 560,
      left: 10,
      child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(

                  color: Colors.white,
                  shape: BoxShape.circle
              ),
              // child: Image.network("https://www.polestar.com/dato-assets/11286/1727429768-img_6404.jpeg?q=60&dpr=1&w=1248",fit: BoxFit.cover,),
            ),
            SizedBox(width: 20,),
            Text("@Thplant mafia ",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w800),),
            SizedBox(width: 10,),
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Center(child: Text("Subscirbe",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black),)
              ),
            )
          ]
      ));
}
Positioned _buildserach()
{
  return  Positioned(
      top: 520,
      left: 10,
      child: Opacity(
        opacity: 0.8,
        child: Container(
          height: 30,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              SizedBox(width: 20,),
              Icon(Icons.search_sharp,size: 20,color: Colors.white,),
              SizedBox(width: 10,),
              Text("Search 'how to water plants'",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
            ],
          ),
        ),


  )
  );
}

// Video Info Section
Positioned _buildVideoInfo() {
  return Positioned(
    bottom: 1,
    left: 0,
    right: 0,
    child: Container(
      height: 50,
      color: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Icon(Icons.library_music_outlined, color: Colors.white),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              "School Rooftop (Birds Sounds) . hiskokin",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            height: 40,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxRxSepKPvdxLCSjpLZkfBVV_n_nWiVVCAOg&s",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    ),
  );
}

// Sidebar Buttons
Positioned _buildSidebarButtons() {
  return Positioned(
    top: 260,
    right: 20,
    child: Column(
      children: [
        _iconWithText(Icons.thumb_up_alt_outlined, "1.4M"),
        _iconWithText(Icons.thumb_down_alt_outlined, "Dislike"),
        _iconWithText(Icons.message_outlined, "4.0905"),
        _iconWithText(Icons.share_sharp, "Share"),
        _iconWithText(Icons.change_circle_outlined, "19K"),
      ],
    ),
  );
}

// Helper Widget for Sidebar Icons
Widget _iconWithText(IconData icon, String label) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Column(
      children: [
        Icon(icon, size: 30, color: Colors.white),
        Text(label, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ],
    ),
  );
}
