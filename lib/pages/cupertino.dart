import 'package:flutter/cupertino.dart';

class MyCupertino extends StatelessWidget {
  const MyCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        home: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "products"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.shopping_cart), label: "Cart"),
        ],
      ),
      tabBuilder: (context, index) {
        late final CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: ProductListTab());
            });
            break;
          case 1:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: SearchTab());
            });
            break;

          case 2:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: ShoppingCartTab());
            });
            break;
        }
        return returnValue;
      },
    ));
  }
}

class SearchTab extends StatelessWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ShoppingCartTab extends StatelessWidget {
  const ShoppingCartTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ProductListTab extends StatelessWidget {
  const ProductListTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
