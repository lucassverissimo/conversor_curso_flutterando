
import 'package:flutter/material.dart';


class CurrencyBox extends StatefulWidget {
  @override
  State<CurrencyBox> createState() {
    return _CurrencyBox();
  }
}


class _CurrencyBox extends State<CurrencyBox> {
  String dropDownValue = 'Real';
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 56,
              child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropDownValue,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 15,
                  iconEnabledColor: Colors.amber,
                  //elevation: 10,
                  underline: Container(height: 1, color: Colors.amber),
                  items: <String>['Real', 'Dólar']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropDownValue = newValue!;
                    });
                  }),
            )),
        SizedBox(
          width: 10,
        ),
        Expanded(
            flex: 2,
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                  )),
            )),
      ],
    );
  }
}
