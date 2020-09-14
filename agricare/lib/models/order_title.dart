class OrderItem {
  final String title;

  OrderItem(
      {this.title});
}

class OrderShopItem{
  final String shop;
  final String price;
  final String img;

  OrderShopItem({this.shop, this.price, this.img});
}

final List<OrderItem> orderdata = [
  OrderItem(title: "Compound-15:15:15 (basal) - 150kg"),
  OrderItem(title: "Lime - 150Viss"),
  OrderItem(title: "Trichoderma - 150 Kg"),
];

final List<OrderShopItem> orderShopData = [
  OrderShopItem(shop: "ဒီပါမင်း", price: "10,000 Ks / Kg",img: "assets/shops/img.png"),
  OrderShopItem(shop: "ဖြိုး", price: "12,000 Ks / Kg",img: "assets/shops/img1.png"),
  OrderShopItem(shop: "မင်းတစ်ပါး", price: "12,000 Ks / Kg",img: "assets/shops/img2.png"),
  OrderShopItem(shop: "ငွေပုလဲ", price: "13,000 Ks / Kg",img: "assets/shops/img3.png"),
];