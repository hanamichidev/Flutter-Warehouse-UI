import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lock_warehouse_demo/bootomsheetwidget.dart';
import 'package:lock_warehouse_demo/lista_guias.dart';
import 'package:lock_warehouse_demo/lista_ordenes.dart';
import 'package:lock_warehouse_demo/packings.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedFilterList = 'Guia';
  bool bootomSheetHelper = false;

  filterCallback(optionSelected) {
    setState(() => selectedFilterList = optionSelected);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const SearchPage())),
              icon: const Icon(Icons.search))
        ],
        leading: IconButton(
          icon: Icon(Icons.filter_alt),
          onPressed: () {
            showCupertinoModalPopup(
                context: context,
                builder: ((context) {
                  return Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: BootomSheetWidget(
                        title: 'Filtrar lista por:',
                        opcionInicial: selectedFilterList,
                        filterCallback: filterCallback,
                        onClickedClose: () => Navigator.pop(context)),
                  );
                }));
          },
        ),
      ),
      body: ListView.separated(
          itemCount: 1,
          itemBuilder: (context, index) => selectedFilterList == 'Guia'
              ? ListaGuiasWidget()
              : ListaOrdenesWidget(),
          separatorBuilder: (_, __) => const Divider(
                color: Colors.black,
              )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.qr_code_scanner_rounded),
        label: Text("Escanear QR"),
      ),
    );
  }
}

// Search Page
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final allPackagesList = [
    Package(
        guiaPaquete: 'LDCR202214144-1',
        metodoEnvio: 'Mensajeria Privada',
        estadoGuia: 'Guia Creada',
        facturaGuia: 'FC12345',
        vendedorGuia: 'Apple Inc.',
        ordenPaquete: 'ORD678964-1',
        clientePaquete: 'Envases CR'),
    Package(
        guiaPaquete: 'LDCR202214144-2',
        metodoEnvio: 'Mensajeria Privada',
        estadoGuia: 'Guia Creada',
        facturaGuia: 'FC12345',
        vendedorGuia: 'Apple Inc.',
        ordenPaquete: 'ORD678964-1',
        clientePaquete: 'Envases CR'),
    Package(
        guiaPaquete: 'LDCR202214145-1',
        metodoEnvio: 'Mensajeria Privada',
        estadoGuia: 'Guia en Preparacion',
        facturaGuia: 'FC12347',
        vendedorGuia: 'Apple Inc.',
        ordenPaquete: 'ORD678964-1',
        clientePaquete: 'Envases CR'),
    Package(
        guiaPaquete: 'LDCR202214145-2',
        metodoEnvio: 'Mensajeria Privada',
        estadoGuia: 'Guia en Preparacion',
        facturaGuia: 'FC12347',
        vendedorGuia: 'Apple Inc.',
        ordenPaquete: 'ORD678964-1',
        clientePaquete: 'Envases CR')
  ];

  List<Package> foundPackages = [];

  final _controller = TextEditingController();

  initState() {
    foundPackages = allPackagesList;
  }

  void searchPackage(String query) {
    List<Package> results = [];

    if (query.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = allPackagesList;
    } else {
      results = allPackagesList
          .where((package) =>
              package.guiaPaquete.toLowerCase().contains(query.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }
    setState(() {
      foundPackages = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // The search area here
            title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                  prefixIcon: const IconButton(
                    icon: Icon(Icons.search),
                    onPressed: null,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      _controller.clear();
                      setState(() {
                        foundPackages = allPackagesList;
                      });
                    },
                  ),
                  hintText: 'Buscar Guia',
                  border: InputBorder.none),
              onChanged: searchPackage,
            ),
          ),
        )),
        body: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: foundPackages.length,
              itemBuilder: (context, index) {
                return ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: new BoxDecoration(
                          border: new Border(
                              right: new BorderSide(
                                  width: 1.0, color: Colors.black))),
                      child: Icon(Icons.notes_rounded, color: Colors.black),
                    ),
                    title: Text(
                      "Numero de Guia: ${foundPackages[index].guiaPaquete}",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Icon(Icons.person, color: Colors.black),
                            Text(
                                "Metodo de Envio: ${foundPackages[index].metodoEnvio}",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.preview_rounded, color: Colors.black),
                            Text(
                                "Estado Guia: ${foundPackages[index].estadoGuia}",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.paid_rounded, color: Colors.black),
                            Text("Factura: ${foundPackages[index].facturaGuia}",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.person_pin, color: Colors.black),
                            Text(
                                "Vendedor: ${foundPackages[index].vendedorGuia}",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0));
              },
            )),
          ],
        ));
  }
}
