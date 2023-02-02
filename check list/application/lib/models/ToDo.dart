class ToDO {
  String? id;
  String? todoText;
  bool isDone;

  ToDO({this.id, this.todoText, this.isDone = false});

  static List<ToDO> TodoList() {
    return [
      ToDO(id:'01', todoText: 'complete assignment'),
      ToDO(id:'02', todoText: 'flutter project', isDone:true),
    ];
  }
}
