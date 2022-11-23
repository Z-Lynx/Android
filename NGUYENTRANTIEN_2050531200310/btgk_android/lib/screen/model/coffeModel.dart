class Coffee {
  final String id;
  final String name;
  final String type;
  final String shortDesc;
  final String desc;
  final String image;
  final int rate;
  final int price;

  Coffee(
      {required this.id,
      required this.name,
      required this.type,
      required this.shortDesc,
      required this.desc,
      required this.image,
      required this.rate,
      required this.price});
}

List<Coffee> menu = [
  // Coffee(
  //     name: "Cappuccino",
  //     type: 'Hot',
  //     shortDesc: "Gồm cà phê và sữa khuấy bông",
  //     desc:
  //         "Cappuccino là thức uống có nguồn gốc từ Ý gồm cà phê và sữa khuấy bông. Ở Ý, quốc gia mà đồ uống này phổ biến nhất, theo truyền thống, được thưởng thức vào buổi sáng, vào bữa sáng hoặc sau đó, không bao giờ trong bữa ăn",
  //     image:
  //         "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Cappuccino_PeB.jpg/1200px-Cappuccino_PeB.jpg",
  //     rate: 5,
  //     price: 1),
  // Coffee(
  //     name: "Macchiato",
  //     type: "Hot",
  //     shortDesc: "Gồm có cà phê espresso và lớp sữa phía trên được tạo bọt",
  //     desc:
  //         "Macchiato là tên gọi của một loại cà phê Ý, gồm có cà phê espresso và lớp sữa phía trên được tạo bọt. Có lẽ vì thế, macchiato còn được gọi là espresso macchiato hoặc cà phê macchiato.",
  //     image: "assets/Macchiato.jpg",
  //     rate: 5,
  //     price: 1),
  // Coffee(
  //     name: "Espresso",
  //     type: "Hot",
  //     shortDesc: "café được pha bằng máy",
  //     desc:
  //         "Espresso là café được pha bằng máy, sử dụng nước nóng nén bởi áp suất cao qua lớp bột cà phê được xay mịn. Nước dùng để pha chế Espresso là nước tinh khiết, còn café dùng để pha chế theo phương pháp này cũng phải là café rang mộc, không tẩm ướp bất kỳ tạp chất nào.",
  //     image: "assets/espreso.jpg",
  //     rate: 5,
  //     price: 1),
  // Coffee(
  //     name: "Americano",
  //     type: "Hot",
  //     shortDesc: "espresso và có vị đắng nhẹ hơn",
  //     desc:
  //         "Americano là một loại cà phê espresso và có tên gọi khác là cà phê American, đây là loại cà phê truyền thống của người Mỹ với vị đắng nhẹ hơn bằng cách pha loãng cà phê espresso với nước sôi theo một tỷ lệ nhất định.",
  //     image: "assets/americano.jpg",
  //     rate: 5,
  //     price: 1),
  // Coffee(
  //     name: "Espresso",
  //     type: "Hot",
  //     shortDesc: "café được pha bằng máy",
  //     desc:
  //         "Espresso là café được pha bằng máy, sử dụng nước nóng nén bởi áp suất cao qua lớp bột cà phê được xay mịn. Nước dùng để pha chế Espresso là nước tinh khiết, còn café dùng để pha chế theo phương pháp này cũng phải là café rang mộc, không tẩm ướp bất kỳ tạp chất nào.",
  //     image: "assets/espreso.jpg",
  //     rate: 5,
  //     price: 1),
  // Coffee(
  //     name: "Americano",
  //     type: "Hot",
  //     shortDesc: "espresso và có vị đắng nhẹ hơn",
  //     desc:
  //         "Americano là một loại cà phê espresso và có tên gọi khác là cà phê American, đây là loại cà phê truyền thống của người Mỹ với vị đắng nhẹ hơn bằng cách pha loãng cà phê espresso với nước sôi theo một tỷ lệ nhất định.",
  //     image: "assets/americano.jpg",
  //     rate: 5,
  //     price: 1),
  // Coffee(
  //     name: "Espresso",
  //     type: "Hot",
  //     shortDesc: "café được pha bằng máy",
  //     desc:
  //         "Espresso là café được pha bằng máy, sử dụng nước nóng nén bởi áp suất cao qua lớp bột cà phê được xay mịn. Nước dùng để pha chế Espresso là nước tinh khiết, còn café dùng để pha chế theo phương pháp này cũng phải là café rang mộc, không tẩm ướp bất kỳ tạp chất nào.",
  //     image: "assets/espreso.jpg",
  //     rate: 5,
  //     price: 1),
  // Coffee(
  //     name: "Americano",
  //     type: "Hot",
  //     shortDesc: "espresso và có vị đắng nhẹ hơn",
  //     desc:
  //         "Americano là một loại cà phê espresso và có tên gọi khác là cà phê American, đây là loại cà phê truyền thống của người Mỹ với vị đắng nhẹ hơn bằng cách pha loãng cà phê espresso với nước sôi theo một tỷ lệ nhất định.",
  //     image: "assets/americano.jpg",
  //     rate: 5,
  //     price: 1),
  // Coffee(
  //     name: "Espresso",
  //     type: "Hot",
  //     shortDesc: "café được pha bằng máy",
  //     desc:
  //         "Espresso là café được pha bằng máy, sử dụng nước nóng nén bởi áp suất cao qua lớp bột cà phê được xay mịn. Nước dùng để pha chế Espresso là nước tinh khiết, còn café dùng để pha chế theo phương pháp này cũng phải là café rang mộc, không tẩm ướp bất kỳ tạp chất nào.",
  //     image: "assets/espreso.jpg",
  //     rate: 5,
  //     price: 1),
  // Coffee(
  //     name: "Americano",
  //     type: "Hot",
  //     shortDesc: "espresso và có vị đắng nhẹ hơn",
  //     desc:
  //         "Americano là một loại cà phê espresso và có tên gọi khác là cà phê American, đây là loại cà phê truyền thống của người Mỹ với vị đắng nhẹ hơn bằng cách pha loãng cà phê espresso với nước sôi theo một tỷ lệ nhất định.",
  //     image: "assets/americano.jpg",
  //     rate: 5,
  //     price: 1),
];

