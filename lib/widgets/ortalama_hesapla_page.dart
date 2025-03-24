
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hesaplama_app/contstants/app_constants.dart';
import 'package:hesaplama_app/helper/data_helper.dart';
import 'package:hesaplama_app/widgets/ortalama_goster.dart';


class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({super.key});

  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double? secilenDeger = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(Sabitler.baslikText,style: Sabitler.baslikStyle,),
        )
      ) ,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: _buildform(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.amber,
                  child: OrtalamaGoster(ortalama: 2.75, dersSayisi: 2),
                ),
              ),
            ],
          ),
          Expanded(child: Container(
            child: Text('Liste gelecek'),
            color :Colors.blue
          ))
        ],
      )
    );
  }

  
Widget _buildform() {
  return Form(
    key: formKey,
    child: Column(children: [
      _buildtextFormfield(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildHarfler(),
          IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit)),
          IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit)),
        ],
      )
    ],),
  );

}

  _buildtextFormfield() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Matematik',border: OutlineInputBorder(
          borderRadius: Sabitler.borderRadius,
        ),
        filled: true,fillColor: Sabitler.anaRenk.shade100.withOpacity(0.3)
      ),
    );
  }
  
  _buildHarfler() {
    
    return Container(
      padding: Sabitler.dropdownPadding,
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade100.withOpacity(0.3),
        borderRadius: Sabitler.borderRadius
      ),
      child: DropdownButton<double>(
        value: secilenDeger,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        elevation: 16,
        items: DataHelper.tumDerslerinHarfleri(),onChanged: (deger){
          setState(() {
            secilenDeger = deger;
          });
        }, )
    );
  }

}
