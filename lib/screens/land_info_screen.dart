import 'package:flutter/material.dart';
import 'package:lands_app/models/models.dart';
import 'package:intl/intl.dart';

class LandInfoScreen extends StatefulWidget {
  final Land land;
  const LandInfoScreen({Key? key, required this.land}) : super(key: key);

  @override
  State<LandInfoScreen> createState() => _LandInfoScreenState();
}

class _LandInfoScreenState extends State<LandInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.land.name!.common.toString()),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 5),
            Center(
              child: SizedBox(
                width: 300,
                child: FadeInImage(
                  placeholder: const AssetImage('assets/loading.gif'),
                  image: NetworkImage(widget.land.flags!.png.toString()),
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 80,
                  child: Text("Región: ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF781f1e),
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Expanded(
                  child: Text(widget.land.region!,
                      style: const TextStyle(
                        fontSize: 14,
                      )),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 80,
                  child: Text("Subregión: ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF781f1e),
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Expanded(
                  child: Text(widget.land.subregion!,
                      style: const TextStyle(
                        fontSize: 14,
                      )),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 80,
                  child: Text("Población: ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF781f1e),
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Expanded(
                  child: Text(
                    NumberFormat.decimalPattern()
                        .format(widget.land.population)
                        .replaceAll(",", "."),
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 80,
                  child: Text("Capital: ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF781f1e),
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Expanded(
                  child: Text(widget.land.capital![0].toString(),
                      style: const TextStyle(
                        fontSize: 14,
                      )),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 80,
                  child: Text("Escudo: ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF781f1e),
                        fontWeight: FontWeight.bold,
                      )),
                ),
                SizedBox(
                  width: 200,
                  child: FadeInImage(
                    placeholder: const AssetImage('assets/loading.gif'),
                    image: NetworkImage(widget.land.coatOfArms!.png.toString()),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
