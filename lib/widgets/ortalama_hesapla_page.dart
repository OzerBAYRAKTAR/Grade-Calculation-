
import 'package:flutter/material.dart';
import 'package:hesaplama_app/contstants/app_constants.dart';


class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({super.key});

  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
                  child: Text('Ortalama'),
                  color: Colors.amber,
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
          IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit)),
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
}
