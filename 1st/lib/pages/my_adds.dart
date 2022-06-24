import 'package:flutter/material.dart';

class MyAddsScreen extends StatefulWidget {
  const MyAddsScreen({Key? key}) : super(key: key);

  @override
  State<MyAddsScreen> createState() => _MyAddsScreenState();
}

class _MyAddsScreenState extends State<MyAddsScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'MY ADS',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(
                  child: Text(
                    'My Ads',
                    style: TextStyle(color: Colors.black),
                  ),
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                  )),
              Tab(
                  child: Text(
                    'My Favourites',
                    style: TextStyle(color: Colors.black),
                  ),
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  )),
            ],
          ),
        ),
        body:
            // Expanded(
            //   // child: Padding(
            //   //  // padding: EdgeInsets.only(top: 20),
            //   child:
            //
            TabBarView(controller: _tabController, children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 6,
              childAspectRatio: 0.65,
            ),
            itemCount: 8,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Card(
                  elevation: 3,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  )),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          top: -20,
                          child: Image(
                            image: AssetImage("assets/watch.png"),
                            height: 140,
                            width: 160,
                          )),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Apple Watch",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Series 6. Red",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF868686)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "\$  359",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF5956E9)),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: ListView(
              children:[
                Card(
                  child: ListTile(
                    onTap: (){},
                  leading: Image.asset('assets/watch.png'),
                  title: Text(
                    'Apple Watch',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Series 6. Red",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF868686)),
                  ),
                  trailing: Text(
                    "\$  359",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5956E9)),
                  ),
              ),
                ),
                Card(
                  child: ListTile(
                  leading: Image.asset('assets/watch.png'),
                  title: Text(
                    'Apple Watch',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Series 6. Red",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF868686)),
                  ),
                  trailing: Text(
                    "\$  359",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5956E9)),
                  ),
              ),
                ),Card(
                  child: ListTile(
                  leading: Image.asset('assets/watch.png'),
                  title: Text(
                    'Apple Watch',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Series 6. Red",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF868686)),
                  ),
                  trailing: Text(
                    "\$  359",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5956E9)),
                  ),
              ),
                ),Card(
                  child: ListTile(
                  leading: Image.asset('assets/watch.png'),
                  title: Text(
                    'Apple Watch',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Series 6. Red",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF868686)),
                  ),
                  trailing: Text(
                    "\$  359",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5956E9)),
                  ),
              ),
                ),Card(
                  child: ListTile(
                  leading: Image.asset('assets/watch.png'),
                  title: Text(
                    'Apple Watch',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Series 6. Red",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF868686)),
                  ),
                  trailing: Text(
                    "\$  359",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5956E9)),
                  ),
              ),
                ),Card(
                  child: ListTile(
                  leading: Image.asset('assets/watch.png'),
                  title: Text(
                    'Apple Watch',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Series 6. Red",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF868686)),
                  ),
                  trailing: Text(
                    "\$  359",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5956E9)),
                  ),
              ),
                ),Card(
                  child: ListTile(
                  leading: Image.asset('assets/watch.png'),
                  title: Text(
                    'Apple Watch',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Series 6. Red",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF868686)),
                  ),
                  trailing: Text(
                    "\$  359",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5956E9)),
                  ),
              ),
                ),
    ]
            ),
          ),


        ]
            )
    );
  }
}
