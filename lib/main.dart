import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SamplePage(),
    )
  );
}
class SamplePage extends StatefulWidget{
  @override
  _SamplePage createState() => _SamplePage();
}
class _SamplePage extends State<SamplePage>{
  int _rowperpage = PaginatedDataTable.defaultRowsPerPage;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:PaginatedDataTable(
          header: Text("Friends Name"),
          columns: [
            DataColumn(label: Text("Rollno")),
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Age")),
            DataColumn(label:Text("Country")),


          ],
    source: DTS(),
    onRowsPerPageChanged: (r){
            setState(() {
              _rowperpage = r;
            });
    },
    rowsPerPage: _rowperpage,


      )
    ));
  }
}

class DTS extends DataTableSource{
  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(index: index,cells: [
      DataCell(Text("Karthika")),
      DataCell(Text("Divya")),
      DataCell(Text("DivyaBharathy")),
      DataCell(Text("GajaLakshmi"))

    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate =>true;

  @override
  // TODO: implement rowCount
  int get rowCount => 2;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;


}