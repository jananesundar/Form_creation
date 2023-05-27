import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form ';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Your Name',
              labelText: 'Name',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'enter the name';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.phone),
              hintText: 'Enter a phone number',
              labelText: 'Phone',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid phone number';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.calendar_today),
              hintText: 'Enter your date of birth',
              labelText: 'DOB',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid date';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.email),
              hintText: 'Enter the mail id',
              labelText: 'Email id ',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter the valid id';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.password),
              hintText: 'Enter password',
              labelText: 'Password',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid Password';
              }
              return null;
            },
          ),
          Container(
            padding: const EdgeInsets.only(left: 130.0, top: 40.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text(' Submitting')),
                  );
                }
              },
              child: const Text('Submit'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}
