import 'package:conversor_curso/app/components/currency_box.dart';
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
            CurrencyBox(),  
            CurrencyBox(),            
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
