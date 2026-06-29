import 'package:flutter/material.dart';
//import 'package:the_sun_shine/main.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatelessWidget {
  final List<Map<String, dynamic>> productList = [
    {
      "sn": 1,
      "name": "Fresh Milk 1L",
      "description": "Pure and fresh cow milk.",
      "picUrl": "https://picsum.photos/id/101/200/200",
      "qty": 12,
      "price": 60,
      "salesPrice": 50
    },
    {
      "sn": 2,
      "name": "Brown Bread",
      "description": "Whole wheat soft and healthy bread.",
      "picUrl": "https://picsum.photos/id/102/200/200",
      "qty": 5,
      "price": 40,
      "salesPrice": 35
    },
    {
      "sn": 3,
      "name": "Organic Honey",
      "description": "Natural forest honey without additives.",
      "picUrl": "https://picsum.photos/id/103/200/200",
      "qty": 8,
      "price": 150,
      "salesPrice": 130
    },
    // ... include rest of the products here
    {
      "sn": 4,
      "name": "Laptop Sleeve 15”",
      "description": "Water-resistant neoprene laptop case.",
      "picUrl": "https://picsum.photos/id/104/200/200",
      "qty": 5,
      "price": 899,
      "salesPrice": 799
    },
    {
      "sn": 5,
      "name": "Organic Rice",
      "description": "Organic rice made in India.",
      "picUrl": "https://picsum.photos/id/105/200/200",
      "qty": 7,
      "price": 200,
      "salesPrice": 100
    },
    {
      "sn": 6,
      "name": "Laptop Sleeve 15”",
      "description": "Water-resistant neoprene laptop case.",
      "picUrl": "https://picsum.photos/id/106/200/200",
      "qty": 5,
      "price": 899,
      "salesPrice": 799
    },
    {
      "sn": 7,
      "name": "Laptop Sleeve 15”",
      "description": "Water-resistant neoprene laptop case.",
      "picUrl": "https://picsum.photos/id/107/200/200",
      "qty": 5,
      "price": 899,
      "salesPrice": 799
    },
    {
      "sn": 8,
      "name": "Laptop Sleeve 15”",
      "description": "Water-resistant neoprene laptop case.",
      "picUrl": "https://picsum.photos/id/108/200/200",
      "qty": 5,
      "price": 899,
      "salesPrice": 799
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          final product = productList[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(12),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  product["picUrl"],
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                product["name"],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product["description"]),
                  const SizedBox(height: 4),
                  Text("Qty: ${product["qty"]}"),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Text(
                        "₹${product["price"]}",
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "₹${product["salesPrice"]}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            ),
          );
        },
      ),
    );
  }
}