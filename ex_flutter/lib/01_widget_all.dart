import 'package:flutter/material.dart';

class Product {
  const Product({this.name});
  final String name;
}

typedef void CartChangedCallback(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem({Product product, this.isInCart, this.onCartChanged})
  : product = product, super(key: ObjectKey(product));

  final Product product;
  final bool isInCart;
  final CartChangedCallback onCartChanged;

  Color _getColor(BuildContext context) {
    // 여기서 사용되는 테마는 BuildContext에 의존.
    // tree의 다른 부분이 다른 테마를 가질 수 있는 문제가 있음.
    // BuildContext는 build가 실행되는 위치를 가리킨다.
    return isInCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context) {
    if(!isInCart)
      return null;

    return TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onCartChanged(product, !isInCart);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(product.name, style: _getTextStyle(context)),
    );
  }
}

class ShoppingList extends StatefulWidget {
  ShoppingList({Key key, this.products}) : super(key:key);

  final List<Product> products;

  // 프레임워크는 위젯이 tree에 위치가 주어지고 나타나는 처음 한 번 createState()함수를 호출.
  // 만약 부모 위젯이 같은 위젯 유형(같은 key)을 사용하고 rebuild 하면, 프레임워크는 State 객체를 생성하는 대신에 재사용함.
  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  Set<Product> _shoppingCart = Set<Product>();

  void _handleCartChanged(Product product, bool isInCart) {
    setState(() {
      // setState() : 사용자가 카트 안의 무언가를 변경할 때 rebuild를 실행시키기 위한 메소드
      // 메소드 안에서 _shoppingCart르,ㄹ 변경하는 동작 필요.
      // 그 결과 프레임워크는 build를 호출, 앱의 visual appearance는 갱신
      if(isInCart)
        _shoppingCart.add(product);
      else
        _shoppingCart.remove(product);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shooping List'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product) {
          return ShoppingListItem(
            product: product,
            isInCart: _shoppingCart.contains(product),
            onCartChanged: _handleCartChanged,
          );
        }).toList(),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Shopping App',
    home: ShoppingList(
      products: <Product>[
        Product(name: 'Eggs'),
        Product(name: 'Flour'),
        Product(name: 'Chocolate chips'),
      ],
    ),
  ));
}