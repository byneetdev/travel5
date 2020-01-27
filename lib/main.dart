import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel5/destination.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Travel App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250.0,
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 50),
                    Text(
                      "Categories",
                      style: GoogleFonts.arvo(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        textStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "We are sharing about recommended place",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Colors.white70,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 230,
                margin: EdgeInsets.only(top: 135, left: 20),
                child: CustomCarousel(),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 17),
            width: MediaQuery.of(context).size.width,
            child: TabBar(
              labelColor: Colors.blueGrey,
              unselectedLabelColor: Colors.black26,
              controller: _tabController,
              indicatorColor: Colors.black,
              unselectedLabelStyle: GoogleFonts.lato(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              labelStyle: GoogleFonts.lato(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
              isScrollable: true,
              tabs: <Widget>[
                Tab(text: "Popular"),
                Tab(text: "Recommended"),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                ListPopular(),
                ListPopular(),
                //!you can make 2  or more than 2 widget list ^^
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class CustomCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyVerticalImage.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        final data = dummyVerticalImage[index];

        return Container(
          width: 170,
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(data.urlimage),
              fit: BoxFit.fill,
            ),
          ),
          child: Container(
              width: 170,
              height: 230,
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  colors: [
                    Colors.white70,
                    Colors.black12,
                    Colors.black38,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 20,
                    left: 15,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            data.name,
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                textStyle: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                          Text(
                            data.country,
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                textStyle: TextStyle(
                                  color: Colors.white60,
                                )),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
        );
      },
    );
  }
}

class ListPopular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyPopularDestination.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        final data = dummyPopularDestination[index];

        return Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
          padding: EdgeInsets.only(bottom: 25),
          child: Row(
            children: <Widget>[
              Container(
                width: 120,
                height: 120,
                margin: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(data.urlimage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 13, right: 13),
                width: 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(data.country,
                        style: GoogleFonts.arvo(
                            textStyle: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ))),
                    SizedBox(height: 10),
                    Text(
                      data.name,
                      style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          textStyle: TextStyle(
                            color: Colors.black,
                          )),
                    ),
                    SizedBox(height: 5),
                    Text(
                      data.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: GoogleFonts.openSans(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          textStyle: TextStyle(color: Colors.black54)),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
