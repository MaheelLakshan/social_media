import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:social_media/components/toolbar.dart';
import 'package:latlong2/latlong.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: 'Nearby'),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(52.11, -0.23),
          zoom: 10,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.css.flutter',
          ),
          MarkerLayer(
            markers: [
              Marker(
                  width: 100,
                  height: 50,
                  point: LatLng(52.11, -0.23),
                  builder: (context) {
                    return Column(children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                        child: const Text(
                          'UserName',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.red,
                      )
                    ]);
                  })
            ],
          )
        ],
      ),
    );
  }
}
