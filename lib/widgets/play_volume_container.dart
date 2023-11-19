import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:thaalam_music_app/config/colors.dart';

class PlayVolumeContainer extends StatefulWidget {
  const PlayVolumeContainer({super.key, });

  @override
  State<PlayVolumeContainer> createState() => _PlayVolumeContainerState();
}

class _PlayVolumeContainerState extends State<PlayVolumeContainer> {
  var value = 30.0;
  @override
  Widget build(BuildContext context) {
   
    return  SfRadialGauge(
      animationDuration: 1,
      enableLoadingAnimation: true,
      axes: [
        RadialAxis(
          useRangeColorForAxis: true,
          startAngle: 0,
          endAngle: 180,
          canRotateLabels: false,
          interval: 10,
          isInversed: false,
          maximum: 100,
          minimum: 0,
          showAxisLine: true,
          showLabels: false,
          showTicks: true,
          ranges: [
            GaugeRange(
              startValue: 0,
              endValue: value,
              color: primaryColor.withOpacity(0.2),
              
            )
          ],
          pointers: [
            MarkerPointer(
              color: primaryColor,
              value:0,
              onValueChanged: (val) {
                setState(() {
                  value=val;
                });
              },
              enableAnimation: true,
              enableDragging: true,
              markerType: MarkerType.diamond,
              markerWidth: 20,
              markerHeight: 20,
            )
          ],
          annotations: [
            GaugeAnnotation(
               horizontalAlignment: GaugeAlignment.center,
               angle: 10,
               positionFactor: 0.02,
              widget:  Container(
                width: 280,
                height: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  image: DecorationImage(
                    image:   AssetImage("assets/images/thaalam_bg_img.png"),
                     fit: BoxFit.cover
                  ),
                  color: boxColor,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}