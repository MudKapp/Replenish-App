import 'package:flutter/material.dart';
import 'package:replenish_app/services/data.dart';

class Comment extends StatefulWidget {


  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  Map args = {};
  TextEditingController commentController = TextEditingController();

  void test () async{
    Data instance = Data();
    var data = await instance.getComments(args['data']['day']);
    print(data['comments']);
  }



  @override
  Widget build(BuildContext context) {
    args = args.isNotEmpty ? args : ModalRoute.of(context).settings.arguments;
    test();
    return Scaffold(
      appBar: AppBar(
        title: Text('Comments'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Column(
              children: [
                CommentForm()
              ],
            ),
          ),

        ],
      ),
    );
  }
}
// Create a Form widget.
class CommentForm extends StatefulWidget {
  @override
  CommentFormState createState() {
    return CommentFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class CommentFormState extends State<CommentForm> {
  Map args = {};
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<CommentFormState>.
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();
  var count = 0;
  @override
  Widget build(BuildContext context) {
    print('refresh');
    args = args.isNotEmpty ? args : ModalRoute.of(context).settings.arguments;
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: myController,
            textInputAction: TextInputAction.go,
            decoration: InputDecoration(
              labelText: 'Enter Comment',
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
            ),
            minLines: 2,
            maxLines: 3,
            validator: (value) {
              if(value.length > 125)
                return "Comment cant be over 120 characters";
              else
                return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {

                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  submitComment();
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }

  Future submitComment() async{
    Data instance = Data();
    await instance.submitComment(args['data']['day'],{'author':"NULL","comment":"${myController.text}"});
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('Comment Added')));
  }
}