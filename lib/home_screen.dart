import 'package:dropdown_with_provider/services/dropdown_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown Button w' Provider"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Consumer<MeasurementTypes>(
            builder: (context, value, child) =>
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Container(
                    width: 80.0,
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.expand_more),
                      iconSize: 30,
                      value: value.selectedMeasurement,
                      underline: Container(
                        height: 1,
                        color: Colors.redAccent,
                      ),
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),
                      onChanged: (String? v) {
                        // This is called when the user selects an item.
                        value.setMeasurementType(v);
                      },
                      items: value.measurementDropdownList.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(Provider.of<MeasurementTypes>(context).selectedMeasurement),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
