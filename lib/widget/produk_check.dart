import 'package:flutter/material.dart';

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    required this.label,
    required this.padding,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(label)),
            Checkbox(
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProdukCheck extends StatefulWidget {
  const ProdukCheck({Key? key}) : super(key: key);

  @override
  State<ProdukCheck> createState() => _ProdukCheckState();
}

class _ProdukCheckState extends State<ProdukCheck> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white70,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.grey.withOpacity(0.53))
              ]),
          child: LabeledCheckbox(
            label: 'Tepung',
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            value: _isSelected,
            onChanged: (bool newValue) {
              setState(() {
                _isSelected = newValue;
              });
            },
          ),
        ),
        SizedBox(
          height: 16,
        )
      ],
    );
  }
}

class CheckBoxInListview extends StatefulWidget {
  @override
  _CheckBoxInListviewState createState() => _CheckBoxInListviewState();
}

class _CheckBoxInListviewState extends State<CheckBoxInListview> {
  bool _isChecked = false;

  List<String> _texts = [
    "InduceSmile.com," "Flutter.io",
    "google.com",
    "youtube.com",
    "yahoo.com",
    "gmail.com"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: _texts
            .map((text) => CheckboxListTile(
                  title: Text(text),
                  value: _isChecked,
                  onChanged: (val) {
                    setState(() {
                      _isChecked = val!;
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
