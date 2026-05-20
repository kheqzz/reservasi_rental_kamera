import 'package:flutter/material.dart';

import 'package:flutter_application_1/helper/widget_with_builder.dart';

class HelperWidget extends StatefulWidget {
  const HelperWidget({super.key});

  @override
  State<HelperWidget> createState() => _HelperWidgetState();
}

class _HelperWidgetState extends State<HelperWidget> {
  List<String> metodePembayaranDipilih = [];
  String? opsiPembayaran = 'qris';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('data'),
            SizedBox(height: 50),
            Column(
              spacing: 20,
              children: [
                OpsiPembayaranRadioButton(
                  parentValueOfRadio: opsiPembayaran,
                  childValueOfRadio: 'qriss',
                  onChanged: (value) {
                    setState(() {
                      opsiPembayaran = value;
                    });
                  },
                  subtitile: 'pembayaran dengan qriss',
                  title: 'qriss',
                ),
                OpsiPembayaranRadioButton(
                  parentValueOfRadio: opsiPembayaran,
                  childValueOfRadio: 'ewalet',
                  onChanged: (value) {
                    setState(() {
                      opsiPembayaran = value;
                    });
                  },
                  subtitile: 'pembayaran dengan ewaket',
                  title: 'ewalet',
                ),
                SizedBox(height: 10),
                ButtonWithIconAndArrowRight(
                  heightButton: 50,
                  icon: Icons.camera_alt_outlined,
                  title: 'Kelola Kamera',
                  iconSize: 25,
                ),
                ButtonWithIconAndArrowRight(
                  heightButton: 50,
                  icon: Icons.camera_alt_outlined,
                  title: 'Kelola Kamera',
                  iconSize: 25,
                ),
                ButtonWithIconAndArrowRight(
                  heightButton: 50,
                  icon: Icons.camera_alt_outlined,
                  title: 'Kelola Kamera',
                  iconSize: 25,
                ),
                ElevatedButtonSquircle(
                  width: double.infinity,
                  height: 30,
                  backgroundColor: Colors.black,
                  text: 'pindah',
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WidgetWithBuilder(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 20),
                ElevatedButtonSquircle(
                  width: double.infinity,
                  height: 30,
                  backgroundColor: Colors.black,
                  text: 'show notification',
                  color: Colors.white,
                  onPressed: () {
                    showMessageSuccess(context, 'sukses');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showMessageSuccess(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: SizedBox(height: 100, child: Text('data')),
        actions: [Icon(Icons.verified)],
      ),
    );
    Future.delayed(Duration(seconds: 2), () {
      if (context.mounted) {
        ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
      }
    });
  }
}

class ButtonWithIconAndArrowRight extends StatelessWidget {
  final double heightButton;
  final IconData icon;
  final String title;
  final double iconSize;
  const ButtonWithIconAndArrowRight({
    super.key,
    required this.heightButton,
    required this.icon,
    required this.title,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightButton,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.white),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 10,
              children: [
                Icon(icon, color: Colors.black54, size: iconSize),
                Text(title, style: TextStyle(color: Colors.black)),
              ],
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

class ElevatedButtonSquircle extends StatelessWidget {
  final VoidCallback? onPressed;
  final double width;
  final double height;
  final Color backgroundColor;
  final String text;
  final Color color;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final MaterialTapTargetSize? tapTargetMargin;
  final OutlinedBorder? borderRectangle;
  const ElevatedButtonSquircle({
    super.key,
    required this.width,
    required this.height,
    required this.backgroundColor,
    required this.text,
    required this.color,
    this.tapTargetMargin,
    this.padding,
    this.onPressed,
    this.textStyle,
    this.borderRectangle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(width, height),
        padding: padding,
        tapTargetSize: tapTargetMargin,
        elevation: 2,
        disabledBackgroundColor: color,
        shape: borderRectangle,
      ),
      onPressed: onPressed,
      child: Text(text, style: textStyle),
    );
  }
}

class OpsiPembayaranRadioButton extends StatelessWidget {
  final String? parentValueOfRadio;
  final ValueChanged<String?> onChanged;
  final String childValueOfRadio;
  final String title;
  final String subtitile;
  const OpsiPembayaranRadioButton({
    super.key,
    required this.parentValueOfRadio,
    required this.onChanged,
    required this.childValueOfRadio,
    required this.title,
    required this.subtitile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),

      child: RadioGroup(
        groupValue: parentValueOfRadio,
        onChanged: onChanged,
        child: Column(
          children: [
            RadioListTile(
              value: childValueOfRadio,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(title),
              subtitle: Text(subtitile),
              activeColor: Colors.blue,
              contentPadding: EdgeInsets.symmetric(horizontal: 8),
              horizontalTitleGap: 2,
              minTileHeight: 30,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
