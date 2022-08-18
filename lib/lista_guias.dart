import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class ListaGuiasWidget extends StatelessWidget {
  const ListaGuiasWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => StepperWidget())));
            },
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
              "Numero de Guia: LDCR202214144-1",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              children: [
                Row(
                  children: <Widget>[
                    Icon(Icons.person, color: Colors.black),
                    Text("Metodo de Envio: Mensajeria Privada",
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
              "Numero de Guia: LDCR202214145-2",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              children: [
                Row(
                  children: <Widget>[
                    Icon(Icons.person, color: Colors.black),
                    Text("Metodo de Envio: Correos de CR",
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

class StepperWidget extends StatelessWidget {
  const StepperWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Estado Guia"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Timeline(
                  children: <TimelineModel>[
                    TimelineModel(
                      Container(
                        height: 100,
                        child: Center(
                            child: Card(
                          child: ListTile(
                            title: Text("Guia Creada"),
                            subtitle: Column(
                              children: [
                                Row(
                                  children: <Widget>[
                                    Text("Nombre: (CC) Evelyn Mendez",
                                        style: TextStyle(color: Colors.black)),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                        "Responsable: 47474754758-Laidet Rojas",
                                        style: TextStyle(color: Colors.black)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          elevation: 8,
                          shadowColor: Colors.grey,
                        )),
                      ),
                      icon: Icon(Icons.flag, color: Colors.white),
                      iconBackground: Colors.black,
                    ),
                    TimelineModel(
                      Container(
                        height: 100,
                        child: Center(
                          child: Card(
                            child: ListTile(
                              title: Text("Guia en Preparacion"),
                              subtitle: Column(
                                children: [
                                  Row(
                                    children: <Widget>[
                                      Text("Nombre: (CC) Evelyn Mendez",
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text("Comentarios: Guia Preparada",
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            elevation: 8,
                            shadowColor: Colors.grey,
                          ),
                        ),
                      ),
                      icon: Icon(Icons.indeterminate_check_box,
                          color: Colors.white),
                      iconBackground: Colors.black,
                    ),
                    TimelineModel(
                      Container(
                        height: 100,
                        child: Center(
                          child: Card(
                            child: ListTile(
                              title: Text("Guia Creada"),
                              subtitle: Column(
                                children: [
                                  Row(
                                    children: <Widget>[
                                      Text("Nombre: (CC) Evelyn Mendez",
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                          "Responsable: 47474754758-Laidet Rojas",
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            elevation: 8,
                            shadowColor: Colors.grey,
                          ),
                        ),
                      ),
                      icon: Icon(Icons.checklist_sharp, color: Colors.white),
                      iconBackground: Colors.black,
                    ),
                    TimelineModel(
                      Container(
                        height: 100,
                        child: Center(
                          child: Card(
                            child: ListTile(
                              title: Text("Guia Creada"),
                              subtitle: Column(
                                children: [
                                  Row(
                                    children: <Widget>[
                                      Text("Nombre: (CC) Evelyn Mendez",
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                          "Responsable: 47474754758-Laidet Rojas",
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            elevation: 8,
                            shadowColor: Colors.grey,
                          ),
                        ),
                      ),
                      icon:
                          Icon(Icons.car_repair_outlined, color: Colors.white),
                      iconBackground: Colors.black,
                    ),
                    TimelineModel(
                      Container(
                        height: 100,
                        child: Center(
                          child: Card(
                            child: ListTile(
                              title: Text("Guia Creada"),
                              subtitle: Column(
                                children: [
                                  Row(
                                    children: <Widget>[
                                      Text("Nombre: (CC) Evelyn Mendez",
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                          "Responsable: 47474754758-Laidet Rojas",
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            elevation: 8,
                            shadowColor: Colors.grey,
                          ),
                        ),
                      ),
                      icon: Icon(Icons.airplanemode_active_outlined,
                          color: Colors.white),
                      iconBackground: Colors.black,
                    ),
                  ],
                  position: TimelinePosition.Left,
                  iconSize: 40,
                  lineColor: Colors.black,
                ),
              ),
            ],
          ),
        )); //Time);
  }
}
