import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: mymap(),
    );
  }
}

class mymap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('may map'),
        ),
        body: new Stack(
          children: <Widget>[
            new FlutterMap(
              options: new MapOptions(
                center: LatLng(9.943738, 105.809792),
                zoom: 11.0,
              ),
              layers: [

                new TileLayerOptions(
                  wmsOptions: WMSTileLayerOptions(
                    // Set the WMS layer's CRS too
                    baseUrl: 'http://local.fastmap.vn:8082/geoserver/dongnam/wms?',
                    layers: ['dongnam:Pin_polygon'],
                    transparent: true,
                    format: 'image/png'
                  ),
                ),
              ],

            )
          ],
        ),
      )
    );
  }
}



