//ini adalah helper untuk pembuatan bentuk mulai dari persegi panjang,container,intinya yang squircle lah

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper/helper_widget.dart';

class HelperShape extends StatefulWidget {
  const HelperShape({super.key});

  @override
  State<HelperShape> createState() => _HelperShapeState();
}

class _HelperShapeState extends State<HelperShape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('data'),
            ElevatedButtonSquircle(
              height: 45,
              width: double.infinity,
              backgroundColor: Colors.black,
              text: 'Login',
              color: Colors.white,
            ),
            SizedBox(height: 50),
            ContainerSquircle(
              width: double.infinity,
              height: 50,
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
              child: Text('data'),
            ),
            SizedBox(height: 50),
            GarisPutusPutusRectangle(
              panjang_garis: 5,
              jarak_spasi_garis: 2,
              color: Colors.black,
              ketebalan_stroke: 2,
              child: Text('data'),
            ),
            SizedBox(height: 50),
            TextFieldCustomIsi(
              autoFillHints: [AutofillHints.addressCity],

              borderRadius: BorderRadius.circular(20),
              borderColor: Colors.blue,
              hint: 'emaul',
              label: 'ini lael',
              textInputType: TextInputType.datetime,
            ),
            TextFieldCustomIsi(
              hint: 'Deskripsi',
              borderColor: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            SizedBox(height: 10),
            IconApp(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HelperWidget()),
                  );
                });
              },
              child: Text('pindag'),
            ),
          ],
        ),
      ),
    );
  }
}

class IconApp extends StatelessWidget {
  const IconApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Color(0xFF2979f2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        Icons.camera_alt_outlined,
        size: 33,
        color: const Color.fromARGB(255, 246, 240, 240),
      ),
    );
  }
}

class TextFieldCustomIsi extends StatelessWidget {
  final TextInputType? textInputType;
  final List<String>? autoFillHints;
  final String? label;
  final String? hint;
  final FloatingLabelBehavior? behaviorLabel;
  final Color borderColor;
  final BorderRadius borderRadius;

  const TextFieldCustomIsi({
    super.key,
    this.textInputType,
    this.autoFillHints,
    this.label,
    this.hint,
    this.behaviorLabel,
    required this.borderColor,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      autofillHints: autoFillHints,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        floatingLabelBehavior: behaviorLabel,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}

class GarisPutusPutusRectangle extends StatelessWidget {
  final double panjang_garis;
  final double jarak_spasi_garis;
  final double ketebalan_stroke;
  final Color color;
  final Widget child;
  const GarisPutusPutusRectangle({
    super.key,
    required this.panjang_garis,
    required this.jarak_spasi_garis,
    required this.ketebalan_stroke,
    required this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RectDottedBorderOptions(
        dashPattern: [panjang_garis, jarak_spasi_garis],
        strokeWidth: ketebalan_stroke,
        color: color,
      ),
      child: child,
    );
  }
}

class ContainerSquircle extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadius borderRadius;
  final Color color;
  final Widget? child;
  final DecorationImage? image;
  const ContainerSquircle({
    super.key,
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.color,
    this.image,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,

      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: color,
        image: image,
      ),
      child: child,
    );
  }
}
