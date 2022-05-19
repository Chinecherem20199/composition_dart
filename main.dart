class Instructor {
  String _name;

  //constructor
  Instructor({required String name}) : _name = name;
//Getters and Setters
  String get name => _name;
  set name(String name) => _name = name;

  @override
  String toString() {
    return 'Name of the Instructor: $_name';
  }
}

class Book {
  //Private field
  String _bookName;
  String _isbn;
  //Constructor
  Book({required String bookName, required String isbn})
      : _bookName = bookName,
        _isbn = isbn;

  //Getters and Setters
  String get bookName => _bookName;
  String get isbn => _isbn;

  set bookName(String bookName) => _bookName = bookName;
  set isbn(String isbn) => _isbn = isbn;

  @override
  String toString() {
    return 'Name of the book: $_bookName \nIBSN for the book: $_isbn';
  }
}

//This is where composition is being applied in dart.
class Course {
  //private field
  String _name;
  Book _book;
  Instructor _instructor;

  //Constructor
  Course(
      {required String name,
      required Book book,
      required Instructor instructor})
      : _name = name,
        _book = book,
        _instructor = instructor;

  //Getters and Setters
  String get name => _name;
  Book get book => _book;
  Instructor get instructor => _instructor;

  set name(String name) => _name = name;
  set book(Book book) => _book = book;
  set instructor(Instructor instructor) => _instructor = instructor;

  //override toString method here
  @override
  String toString() {
    // TODO: implement toString
    return 'Name of Course: $_name\n$_book\n$_instructor';
  }
}

void main() {
  var course = Course(
    name: 'Dart programming',
    book: Book(
      bookName: 'Advance in dart',
      isbn: '123-542-670',
    ),
    instructor: Instructor(
      name: 'Chinecherem Ugwuanyi',
    ),
  );
  print(course.book.bookName);
}
