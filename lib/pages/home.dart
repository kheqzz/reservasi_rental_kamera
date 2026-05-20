import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper/database_example2.dart';
import 'package:flutter_application_1/helper/helper_shape.dart';
import 'package:flutter_application_1/helper/helper_text.dart';
import 'package:flutter_application_1/helper/helper_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<Map<String, dynamic>> listIcon = [
    {'icon': Icons.home, 'label': 'home'},
    {'icon': Icons.home, 'label': 'home'},
    {'icon': Icons.home, 'label': 'home'},
    {'icon': Icons.home, 'label': 'home'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        shadowColor: Colors.black54,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadiusGeometry.circular(20),
        // ),
        elevation: 2,
        title: Text('rental kamera'),
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
      ),
      body: Column(
        children: [
          Text('Produk Tersedia'),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListContainerGenerator(
              listItem: cameras, // <-- input list map dari database
              itemBuilder: (p0, listData) {
                return IsiContainerTigaColumnPlusCurrencyIntl(
                  itemMap: listData,
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedFontSize: 8,
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items: List.generate(listIcon.length, (index) {
          bool isActive = _currentIndex == index;
          return BottomNavigationBarItem(
            label: '',
            icon: Column(
              children: [
                Container(
                  height: 30,
                  width: 60,
                  color: isActive ? Colors.amber : Colors.transparent,
                  child: Icon(listIcon[index]['icon']),
                ),
                Text(listIcon[index]['label']),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class ListContainerGenerator extends StatelessWidget {
  final Widget Function(BuildContext, Map<String, dynamic> listData)
  itemBuilder;
  final List<Map<String, dynamic>> listItem;
  const ListContainerGenerator({
    super.key,
    required this.listItem,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(listItem.length, (index) {
        
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Container(
            width: double.infinity,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(20),
                  offset: Offset(1, 2),
                  blurRadius: 2,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  ContainerSquircle(
                    image: DecorationImage(
                      image: NetworkImage(listItem[index]['imageUrl']),
                      fit: BoxFit.cover,
                    ),
                    width: 92,
                    height: 92,
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  itemBuilder(context, listItem[index]),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

class IsiContainerTigaColumnPlusCurrencyIntl extends StatelessWidget {
  final Map<String, dynamic> itemMap;
  const IsiContainerTigaColumnPlusCurrencyIntl({
    super.key,
    y,
    required this.itemMap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        spacing: 5,

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            itemMap['name'],
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              Text(
                formatCurrency.format(itemMap['pricePerDay']),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.blueAccent,
                ),
              ),
              Text(
                ' per hari',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          ElevatedButtonSquircle(
            width: 30,
            height: 30,
            backgroundColor: Colors.blue,
            text: 'Detail',
            textStyle: TextStyle(color: Colors.white),
            color: Colors.white,
            tapTargetMargin: MaterialTapTargetSize.shrinkWrap,
            onPressed: () {},
            borderRectangle: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
