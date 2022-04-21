import 'package:conversor_curso/app/models/currency_model.dart';
import 'package:flutter/material.dart';


class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() {
    return _HomeViewState();
  }
}


class _HomeViewState extends State<HomeView> {
  String dropDownValue = 'Real';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
          child: Column(children: [
            Text('Conversor de moedas', style: TextStyle(color: Colors.amber, fontSize: 30)),
            SizedBox(height: 10,),
            ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('assets/images/logo.jpg', width: 150, height: 150,),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
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
                        items:
                        <String>['Real', 'Dólar']
                          .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),                       
                        onChanged: (String? newValue) {
                          setState((){
                            this.dropDownValue = newValue!;
                          });
                        }
                        ),
                    )
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber),                          
                        ),
                        focusedBorder:UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber),                          
                        )
                      ),
                    )
                  ),
                ],
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amber, // background
                onPrimary: Colors.black, // foreground
              ),
              onPressed: () {},
              child: Text('CONVERTER'),
            )
          ]),
        ),
      ),
    );
  }
}
