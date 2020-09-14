class CalculateItem {
  final String title;
  final String date;
  final String subtitle;
  final String price;
  final String img;

  CalculateItem({this.title, this.date, this.subtitle, this.price, this.img});
}

final List<CalculateItem> calculatedata = [
  CalculateItem(
      title: 'ကြက်သွန်နီ',
      date: "12 Jun 2019",
      subtitle: "မိုးရာသီ",
      price: "150,000ks",
      img: "assets/fruits/img.png"),
  CalculateItem(
      title: 'ငရုပ်သီး',
      date: "12 Jun 2019",
      subtitle: "မိုးရာသီ",
      price: "150,000ks",
      img: "assets/fruits/img1.png"),
  CalculateItem(
      title: 'ခရမ်းချဥ်သီး',
      date: "12 Jun 2019",
      subtitle: "မိုးရာသီ",
      price: "150,000ks",
      img: "assets/fruits/img2.png"),
];
