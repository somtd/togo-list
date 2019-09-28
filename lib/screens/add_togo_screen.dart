import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../widgets/image_input.dart';
import '../widgets/location_input.dart';

class AddToGoScreen extends StatefulWidget {
  static const routeName = '/add-togo';

  @override
  _AddToGoScreenState createState() => _AddToGoScreenState();
}

class _AddToGoScreenState extends State<AddToGoScreen> {
  final _titleController = TextEditingController();
  final _locationController = TextEditingController();

  @override
  void initState() {
    print('This GOOGLE MAP API Key:' + DotEnv().env['GOOGLE_MAP_API_KEY']);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add a new ToGo')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      controller: _titleController,
                    ),
                    SizedBox(height: 10),
                    ImageInput(),
                    TextField(
                      decoration: InputDecoration(labelText: 'Location'),
                      controller: _locationController,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    LocationInput(),
                  ],
                ),
              ),
            ),
          ),
          RaisedButton.icon(
            icon: Icon(Icons.add),
            label: Text('Add ToGo'),
            onPressed: () {},
            elevation: 0,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            color: Theme.of(context).accentColor,
          ),
        ],
      ),
    );
  }
}
