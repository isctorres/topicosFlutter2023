import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IntencionesScreen extends StatelessWidget {
  const IntencionesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intenciones"),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 5, top: 5, right: 5),
        children: [
          cardIntencion(
            color: Colors.amber,
            subtitle: "Abrir página web", 
            title: "https://itcelaya.edu.mx",
            img: Image.asset('assets/291715_chrome_google_browser_logo_network_icon.png'),
            evento: (){
              _openWEB();
              print('entrp');
            }),
          const SizedBox(height: 5,),
          cardIntencion(
            title: "Llamada telefonica",
            subtitle: "4612279093",
            color: Colors.orange,
            img: Image.asset('assets/67154_yellow_phone_icon.png'),
            evento: (){}
            ),
          const SizedBox(height: 5,),
          cardIntencion(
            color: Colors.red,
            title: "Enviar SMS",
            subtitle: "4612279093",
            img: Image.asset('assets/1215419_chat_facetime_messages_sms_icon.png'),
            evento: (){}
          ),
          const SizedBox(height: 5,),
          cardIntencion(
            color: Colors.greenAccent,
            title: "Enviar Email",
            subtitle: "4612279093",
            img: Image.asset('assets/1215419_chat_facetime_messages_sms_icon.png'),
            evento: (){}
          ),
          const SizedBox(height: 5,),
          cardIntencion(
            color: Colors.blueGrey,
            title: "Tomar Fotografia",
            subtitle: "4612279093",
            img: Image.asset('assets/1215419_chat_facetime_messages_sms_icon.png'),
            evento: (){}
          ),
        ],
      ),
    );
  }

  Future<void> _openWEB() async {
    Uri url = Uri.parse("https://itcelaya.edu.mx");
    if( !await launchUrl(url)  ){
      print("Exito");
    }
  }

  Widget cardIntencion({
    required Color color, 
    required String title, 
    required String subtitle,
    required Widget img,
    required Function() evento}){
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.chevron_right),
        leading: img,
        onTap: evento,
      ),
    );  
  }

}