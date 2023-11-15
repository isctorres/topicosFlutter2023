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
              _openWEB(context);
            }),
          const SizedBox(height: 5,),
          cardIntencion(
            title: "Llamada telefonica",
            subtitle: "4612279093",
            color: Colors.orange,
            img: Image.asset('assets/67154_yellow_phone_icon.png'),
            evento: (){
              _callPhone(context);
            }
            ),
          const SizedBox(height: 5,),
          cardIntencion(
            color: Colors.red,
            title: "Enviar SMS",
            subtitle: "4612279093",
            img: Image.asset('assets/1215419_chat_facetime_messages_sms_icon.png'),
            evento: (){
              _sendSMS(context);
            }
          ),
          const SizedBox(height: 5,),
          cardIntencion(
            color: Colors.greenAccent,
            title: "Enviar Email",
            subtitle: "4612279093",
            img: Image.asset('assets/1215419_chat_facetime_messages_sms_icon.png'),
            evento: (){
              _sendEmail(context);
            }
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

  Future<void> _openWEB(BuildContext context) async {
    Uri url = Uri.parse("https://itcelaya.edu.mx");
    if( !await launchUrl(url)  ){

      final snackBar = SnackBar(content: Text('La URL no es valida'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> _callPhone(BuildContext context) async {
    Uri url = Uri.parse("tel:4612279093");
    if( !await launchUrl(url) ){

      final snackBar = SnackBar(content: Text('El número no es valido'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> _sendSMS(BuildContext context) async {
    Uri url = Uri.parse("sms:4612279093?body=hola");
    if( !await launchUrl(url) ){

      final snackBar = SnackBar(content: Text('El número no es valido'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> _sendEmail(BuildContext context) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'isctorress@gmail.com',
      query: 'subject=Saludos&body=Buen dia :)'
    );

    if( !await launchUrl(params) ){

      final snackBar = SnackBar(content: Text('No se pudo enviar el EMAIL'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> _takePhoto() async{

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