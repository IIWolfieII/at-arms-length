enum PinType { comment, link }

class Pinned {
  PinType type;
  String text;
  DateTime date;

  Pinned({required this.type, required this.text, required this.date});
}
