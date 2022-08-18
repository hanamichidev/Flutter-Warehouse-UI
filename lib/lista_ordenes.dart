import 'package:flutter/material.dart';

class ListaOrdenesWidget extends StatelessWidget {
  const ListaOrdenesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            onTap: () => null,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right: new BorderSide(width: 1.0, color: Colors.black))),
              child: Icon(Icons.notes_rounded, color: Colors.black),
            ),
            title: Text(
              "Numero de Orden: ORD678964-1",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              children: [
                Row(
                  children: <Widget>[
                    Icon(Icons.person, color: Colors.black),
                    Text("Cliente: Envases CR",
                        style: TextStyle(color: Colors.black)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.preview_rounded, color: Colors.black),
                    Text("Estado Guia: Guia Creada",
                        style: TextStyle(color: Colors.black)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.paid_rounded, color: Colors.black),
                    Text("Factura: FC12345",
                        style: TextStyle(color: Colors.black)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.person_pin, color: Colors.black),
                    Text("Vendedor: Apple Inc.",
                        style: TextStyle(color: Colors.black)),
                  ],
                ),
              ],
            ),
            trailing: Icon(Icons.keyboard_arrow_right,
                color: Colors.black, size: 30.0)),
        ListTile(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right: new BorderSide(width: 1.0, color: Colors.black))),
              child: Icon(Icons.notes_rounded, color: Colors.black),
            ),
            title: Text(
              "Numero de Orden: ORD678964-1",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              children: [
                Row(
                  children: <Widget>[
                    Icon(Icons.person, color: Colors.black),
                    Text("Cliente: Envases CR",
                        style: TextStyle(color: Colors.black)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.preview_rounded, color: Colors.black),
                    Text("Estado Guia: Guia en Preparacion",
                        style: TextStyle(color: Colors.black)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.paid_rounded, color: Colors.black),
                    Text("Factura: FC12345",
                        style: TextStyle(color: Colors.black)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.person_pin, color: Colors.black),
                    Text("Vendedor: Apple Inc.",
                        style: TextStyle(color: Colors.black)),
                  ],
                ),
              ],
            ),
            trailing: Icon(Icons.keyboard_arrow_right,
                color: Colors.black, size: 30.0)),
      ],
    );
  }
}
