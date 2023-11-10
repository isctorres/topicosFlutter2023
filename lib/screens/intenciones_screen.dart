import 'package:flutter/material.dart';

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
            title: "https://itcelaya.edu.mx"),
          const SizedBox(height: 5,),
          cardIntencion(
            title: "Llamada telefonica",
            subtitle: "4612279093",
            color: Colors.orange
            ),
          const SizedBox(height: 5,),
          cardIntencion(
            color: Colors.red,
            title: "Enviar SMS",
            subtitle: "4612279093"
          ),
        ],
      ),
    );
  }

  Widget cardIntencion({
    required Color color, 
    required String title, 
    required String subtitle}){
    return Container(
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.chevron_right),
        leading: Image.asset('assets/291715_chrome_google_browser_logo_network_icon.png')
      ),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color
      ),
    );  
  }

}