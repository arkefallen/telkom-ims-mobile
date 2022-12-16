import 'package:flutter/material.dart';

import 'package:mobile_umkm/widget/list_item_stock_opname.dart';

class ProcessStockOpname extends StatefulWidget {
  const ProcessStockOpname({Key? key}) : super(key: key);

  @override
  State<ProcessStockOpname> createState() => _ProcessStockOpnameState();
}

class _ProcessStockOpnameState extends State<ProcessStockOpname> {
  TextEditingController startDateController = TextEditingController();

  TextEditingController endDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 224, 224, 224),
                  spreadRadius: 1.0,
                  blurRadius: 20.0,
                  offset: Offset(0, -1.0))
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text("PROSES"),
            style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Detail Stock Opname",
            style: TextStyle(
                color: Color.fromARGB(255, 56, 56, 56),
                fontWeight: FontWeight.bold)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tanggal Mulai",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8.0),
              // DateTimeField(
              //   controller: startDateController,
              //   onChanged: (value) {
              //     setState(() {
              //       startDateController.text = value.toString();
              //     });
              //   },
              //   format: DateFormat("dd-MM-yyyy"),
              //   onShowPicker: (context, currentValue) {
              //     return showDatePicker(
              //         context: context,
              //         initialDate: currentValue ?? DateTime.now(),
              //         firstDate: DateTime(1945),
              //         lastDate: DateTime(2100));
              //   },
              //   decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(5)),
              //       labelText: "dd/mm/yyyy",
              //       hintText: "Pilih tanggal mulai stock opname",
              //       suffixIcon: Icon(Icons.calendar_today)),
              // ),
              SizedBox(height: 16.0),
              Text(
                "Tanggal Selesai",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8.0),
              // DateTimeField(
              //   controller: endDateController,
              //   onChanged: (value) {
              //     setState(() {
              //       endDateController.text = value.toString();
              //     });
              //   },
              //   format: DateFormat("dd-MM-yyyy"),
              //   onShowPicker: (context, currentValue) {
              //     return showDatePicker(
              //         context: context,
              //         initialDate: currentValue ?? DateTime.now(),
              //         firstDate: DateTime(1945),
              //         lastDate: DateTime(2100));
              //   },
              //   decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(5)),
              //       labelText: "dd/mm/yyyy",
              //       hintText: "Pilih tanggal selesai stock opname",
              //       suffixIcon: Icon(Icons.calendar_view_day)),
              // ),
              SizedBox(height: 32.0),
              Text(
                "Daftar Item",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    return ListItemStockOpname();
                  })),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
