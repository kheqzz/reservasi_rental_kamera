import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper/database_example.dart';
import 'package:flutter_application_1/helper/helper_shape.dart';

class WidgetWithBuilder extends StatefulWidget {
  const WidgetWithBuilder({super.key});

  @override
  State<WidgetWithBuilder> createState() => _WidgetWithBuilderState();
}

class _WidgetWithBuilderState extends State<WidgetWithBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(8),
        child: Column(
          children: [
            IconApp(),
            IconApp(),
            IconApp(),
            Expanded(
              child: ListView.builder(
                itemCount: carList.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text('data'));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
