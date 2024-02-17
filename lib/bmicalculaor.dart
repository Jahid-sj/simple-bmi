import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
  double result =0;
  void calculate(){
    h_value=double.parse(height.text)/100;
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent,
      appBar: AppBar(title: Text('BMI CALCULATOR',style: TextStyle(fontStyle: FontStyle.italic),),
      backgroundColor: Colors.black,
        centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 500,right: 500),
            child: TextField(
              controller: weight,
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText:'Weight'
            )
            ),
          ),
          SizedBox(height: 10.0,width: 200,),
          Padding(
            padding: const EdgeInsets.only(left: 500,right: 500),
            child: TextField(
              controller: height ,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                 labelText: 'Height'
                )
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: ()
          {
            setState(() {
              calculate();
            });
          },
              child: Text('Calculate')),
          Text(result.toStringAsFixed(2)),
        ],
      ),
    );
  }
}
