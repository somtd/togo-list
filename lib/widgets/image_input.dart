import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
        width: 150,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
        ),
        child: Text('No Image Taken', textAlign: TextAlign.center),
        alignment: Alignment.center,
      ),
      SizedBox(height: 10),
      Expanded(
        child: FlatButton.icon(
          icon: Icon(Icons.camera),
          label: Text('Take Picture'),
          textColor: Theme.of(context).primaryColor,
          onPressed: () {},
        ),
      )
    ]);
  }
}
