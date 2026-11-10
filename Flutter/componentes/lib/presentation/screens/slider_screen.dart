import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _valorSlider = 20;
  bool _sliderActivado = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sliders & Checks'),),
      body: Column(
        children: [
          Slider.adaptive(  
            min: 0,
            max: 100,
            value: _valorSlider, 
            onChanged: _sliderActivado ? 
            (value) {             
                setState(() {
                  _valorSlider = value;
                });
              }
            : 
            null
          ),

          Checkbox.adaptive(
            value: _sliderActivado, 
            onChanged: (value) {
              _sliderActivado = value ?? true;
              setState(() {
                
              });
            },
          )
        ],
      )
    );
  }
}