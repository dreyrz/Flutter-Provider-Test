import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
        constrained: false,
        child: Container(
          color: Colors.red,
          width: 600,
          child: Table(
            defaultColumnWidth: FixedColumnWidth(10),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {
              0: FractionColumnWidth(0.2),
            },
            border: TableBorder(
              horizontalInside: BorderSide(
                color: Colors.black,
                style: BorderStyle.solid,
                width: 1.0,
              ),
              verticalInside: BorderSide(
                color: Colors.black,
                style: BorderStyle.solid,
                width: 1.0,
              ),
            ),
            children: [
              _criarLinhaTable(
                  "Data,13/08,14/08,15/08,16/08,17/08,18/08,19/08,20/08"),
              _criarLinhaTable("Jejum (em ml),13,16,1230,2,18,293,304,120"),
              _criarLinhaTable(
                  "2h após café da manhã,13,16,1230,2,18,293,304,120"),
              _criarLinhaTable("Antes do almoço ,13,16,1230,2,18,293,304,120"),
              _criarLinhaTable("2h após almoço, 13,16,1230,2,18,293,304,120"),
              _criarLinhaTable("Antes do jantar ,13,16,1230,2,18,293,304,120"),
              _criarLinhaTable("2h após jantar,13,16,1230,2,18,293,304,120"),
              _criarLinhaTable("Ao deitar,13,16,1230,2,18,293,304,120"),
              _criarLinhaTable("Madrugada,13,16,1230,2,18,293,304,120"),
            ],
          ),
        ));
  }

  _criarLinhaTable(String listaNomes) {
    return TableRow(
      children: listaNomes.split(',').map((name) {
        return Container(
          alignment: Alignment.center,
          child: Text(
            name,
            style: TextStyle(fontSize: 20.0),
          ),
          padding: EdgeInsets.all(8.0),
        );
      }).toList(),
    );
  }
}
