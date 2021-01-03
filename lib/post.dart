import 'package:ansicolor/ansicolor.dart';
import 'package:equatable/equatable.dart';

class Post extends Equatable {
  final int id;
  final String title;
  final String body;
  final pen = AnsiPen()..red(bg: true);

  Post({this.id, this.title, this.body});

  @override
  // TODO: implement props
  List<Object> get props => [id, title, body];
  @override
  String toString() {
    return pen(' id :$id');
  }
}
