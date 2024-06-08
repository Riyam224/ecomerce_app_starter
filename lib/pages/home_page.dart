import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _searchController = TextEditingController();
  String _searchText = '';

  @override
  void dispose() {
    // TODO: implement dispose
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 20,
                right: 370,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "splash");
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 4, right: 2),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: TextField(
                controller: _searchController,
                onChanged: (value) {
                  setState(() {
                    _searchText = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: _searchText.isNotEmpty
                      ? GestureDetector(
                          onTap: () {
                            _searchController.clear();
                            setState(() {
                              _searchText = '';
                            });
                          },
                          child: const Icon(Icons.clear),
                        )
                      : null,
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            ItemList(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade900,
            gap: 6,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite_border,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ]),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  ItemList({super.key});

  final List<Map<String, dynamic>> items = [
    {
      "image": "assets/images/1.jpg",
      "title": "Girly shirts",
      "itemsNumbers": "220 products"
    },
    {
      "image": "assets/images/2.jpg",
      "title": "Men shirts",
      "itemsNumbers": "200 products"
    },
    {
      "image": "assets/images/3.jpg",
      "title": "Bags",
      "itemsNumbers": "300 products"
    },
    {
      "image": "assets/images/4.jpg",
      "title": "Shoes",
      "itemsNumbers": "500 products"
    },
    {
      "image": "assets/images/5.jpg",
      "title": "Electronics",
      "itemsNumbers": "150 products"
    },
    {
      "image": "assets/images/6.jpg",
      "title": "Sun Glasses",
      "itemsNumbers": "330"
    },
    {
      "image": "assets/images/7.jpg",
      "title": "Accessories",
      "itemsNumbers": "600"
    },
    {
      "image": "assets/images/8.jpg",
      "title": "Makeup",
      "itemsNumbers": "200",
    },
    {
      "image": "assets/images/9.jpg",
      "title": "Skincare",
      "itemsNumbers": "890",
    },
    {
      "image": "assets/images/10.jpg",
      "title": "Candles",
      "itemsNumbers": "800",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: SizedBox(
        height: 1000,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
            // todo to increase the height without error
            mainAxisExtent: 200,
          ),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 200,
              height: 1000,
              decoration: BoxDecoration(
                color: Colors.black12.withOpacity(0.08),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: Image.asset(
                      '${items.elementAt(index)["image"]}',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("${items.elementAt(index)["title"]}",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                  // const SizedBox(
                  //   height: 5,
                  // ),
                  Text(
                    '${items.elementAt(index)["itemsNumbers"]}',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
