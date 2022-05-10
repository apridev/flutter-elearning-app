import 'package:elearning_mobile_app/template.dart';
import 'package:elearning_mobile_app/widget/categories_tile.dart';
import 'package:elearning_mobile_app/widget/recommended_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(top: 50, left: defaultMargin, right: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Welcome, Sigit',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Let’s start learning!',
                  style: primaryTextStyle.copyWith(
                      fontSize: 12, fontWeight: medium),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: backgroundColor2
                  ),
                  child: Image.asset(
                    'assets/icons/shopping-cart.png',
                    width: 20,
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: backgroundColor2
              ),
              child: Image.asset(
                'assets/icons/icon-notification.png',
                width: 20,
              ),
            )
              ],
            ),
            
          ],
        ),
      );
    }

    Widget search(){
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin
        ),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: searchBorderColor
          ),
        ),
        child: TextFormField(
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 18
            ),
            hintText: 'Search for learning',
            hintStyle: inputFormStyle.copyWith(
              fontSize: 14
            ),
            prefixIcon: Icon(Icons.search, color: inputForm,)
          ),
        ),
      );
    }

    Widget sliderBorder(){
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/imgs/border.png', width: 325,
              ),
              SizedBox(
                width: 12,
              ),
              Image.asset(
                'assets/imgs/border.png', width: 325,
              ),
            ],
          ),
        ),
      );
    }

    Widget sliderView(){
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/imgs/scroll.png', width: 50,)
          ],
        ),
      );
    }

    Widget categories(){
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          left: defaultMargin,
          right: defaultMargin
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Categories', style: primaryTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semiBold
            ),),
            Text('See all', style: subtitleTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semiBold
            ),)
          ],
        ),
      );
    }

    Widget itemCategories(){
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            CategoriesTile(
              nama: 'Design',
            ),
            CategoriesTile(
              nama: 'Development',
            ),
            CategoriesTile(
              nama: 'Business',
            ),
            CategoriesTile(
              nama: 'Marketing',
            ),
            CategoriesTile(
              nama: 'Design',
            ),
          ],
        ),
      );
    }

    Widget recommended(){
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          left: defaultMargin,
          right: defaultMargin
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Recommended Courses', style: primaryTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semiBold
            ),),
          ],
        ),
      );
    }

    Widget contentRecommended(){
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            RecommendedTile(
              img: 'assets/imgs/content-1.png',
              title: 'User Interface Design Essentials',
              price: '\$50.1',
              reviews: '9,4',
            ),
            RecommendedTile(
              img: 'assets/imgs/content-2.png',
              title: 'User Interface Design Essentials',
              price: '\$48.3',
              reviews: '9,4',
            ),
          ],
        ),
      );
    }

    Widget recommended1(){
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          left: defaultMargin,
          right: defaultMargin
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Recommended Courses', style: primaryTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semiBold
            ),),
          ],
        ),
      );
    }

    Widget contentRecommended1(){
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            RecommendedTile(
              img: 'assets/imgs/content-1.png',
              title: 'User Interface Design Essentials',
              price: '\$50.1',
              reviews: '9,4',
            ),
            RecommendedTile(
              img: 'assets/imgs/content-2.png',
              title: 'User Interface Design Essentials',
              price: '\$48.3',
              reviews: '9,4',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              search(),
              sliderBorder(),
              sliderView(),
              categories(),
              itemCategories(),
              recommended(),
              contentRecommended(),
              SizedBox(
                height: defaultMargin,
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 2, top: 5),
              child: Image.asset(
                'assets/icons/icon-home.png', 
                height: 24,
                color: _currentIndex == 0 ? primaryColor : inputForm,
              ),
            ),
            label: '',
            backgroundColor: primaryColor
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 2, top: 5),
              child: Image.asset(
                'assets/icons/icon-play.png', 
                height: 24,
                color: _currentIndex == 1 ? primaryColor : inputForm,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 2, top: 5),
              child: Image.asset(
                'assets/icons/icon-history.png', 
                height: 24,
                color: _currentIndex == 2 ? primaryColor : inputForm,
              ),
            ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 2, top: 5),
              child: Image.asset(
                'assets/icons/icon-profile.png', 
                height: 24,
                color: _currentIndex == 3 ? primaryColor : inputForm,
              ),
            ),
            label: '',
          ),
        ],
        selectedItemColor: primaryColor,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
