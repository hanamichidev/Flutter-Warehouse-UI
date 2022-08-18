import 'package:flutter/material.dart';

class BootomSheetWidget extends StatefulWidget {
  final String title;
  final String opcionInicial;
  final VoidCallback onClickedClose;
  final Function(String) filterCallback;

  const BootomSheetWidget(
      {Key? key,
      required this.title,
      required this.opcionInicial,
      required this.onClickedClose,
      required this.filterCallback})
      : super(key: key);

  @override
  State<BootomSheetWidget> createState() => _BootomSheetWidgetState();
}

class _BootomSheetWidgetState extends State<BootomSheetWidget> {
  List<String> options = ['Orden', 'Guia'];
  String selectedOption = '';

  @override
  void initState() {
    selectedOption = widget.opcionInicial;
  }

  @override
  Widget build(BuildContext context) => Container(
        height: 240,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 16,
              children:
                  options.map((option) => builChip(option, context)).toList(),
            ),
            const SizedBox(height: 30),
            buildButtons()
          ],
        ),
      );

  Widget buildButtons() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: widget.onClickedClose,
            child: Text(
              'Cerrar Filtros',
              style: TextStyle(fontSize: 15),
            ),
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.black)))),
          ),
          ElevatedButton(
            onPressed: () {
              widget.filterCallback(selectedOption);
            },
            child: Text(
              'Guardar Filtros',
              style: TextStyle(fontSize: 15),
            ),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
            ),
          ),
        ],
      );

  Widget builChip(String option, BuildContext context) {
    final isSelected = selectedOption == option;
    final foreGroundColor = isSelected ? Colors.white : Colors.black;
    final backGroundColor =
        isSelected ? Theme.of(context).primaryColor : Colors.white;

    return GestureDetector(
      onTap: () => setState(() => selectedOption = option),
      child: Chip(
        shape: StadiumBorder(
          side: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        label: Text(
          option,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: foreGroundColor,
              fontSize: 17),
        ),
        backgroundColor: backGroundColor,
      ),
    );
  }
}
