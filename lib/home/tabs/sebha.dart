import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double angle = 0;

  List<String> azkar = [
    'سبحان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله اكبر'
  ];
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset('assets/images/head of seb7a.png'),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Transform.rotate(
                angle: angle,
                child: GestureDetector(
                    onTap: () {
                      OnTap();
                    },
                    child: Image.asset('assets/images/body of seb7a.png')),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27.0),
          child: Text(
            'عدد التسبيحات',
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 26.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(30)),
              child: Text('$counter'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 26.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(30)),
              child: Text('${azkar[num]}'),
            ),
          ),
        ),
      ],
    );
  }

  OnTap() {
    counter++;
    if (counter % 33 == 0) {
      num++;
      counter++;
      counter = 0;
    }
    if (num == azkar.length) {
      num = 0;
    }
    angle += 360 / 4;
    setState(() {});
  }
}
