abstract class Widget {}

class Text extends Widget {
  //Create public field. Note public field does not
  //include underscore .
  String name;

  //create constructor
  Text({required String name}) : this.name = name;
  // Because is public field, we dont need getters and setters
}

class Button extends Widget {
  //public field
  Widget child;
  Function onPressed;
  //Create constructor
  Button({required Widget child, required Function onPressed})
      : this.child = child,
        this.onPressed = onPressed;
}

void main(List<String> args) {
  var button = Button(
    child: Text(name: 'clicked'),
    onPressed: (){
      //Do something....
    },
  );

}
