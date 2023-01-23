class RejaModel {
    final String id;
    final String name;
    final DateTime day;
    bool isdone = false;

    RejaModel( { required this.id, required this.name,  required this.day});

    void isdonemodel(){
        isdone = !isdone;
    }
}

class ListTodo {
    List<RejaModel> _listTodo = [
        RejaModel(id: "1", name: "Maktabga borish", day: DateTime.now()),
        RejaModel(id: "2", name: "kinoga borish", day: DateTime.now()),
        RejaModel(id: "3", name: "uy borish", day: DateTime.now()),
        RejaModel(id: "4", name: "bayramga borish", day: DateTime.now()),
        RejaModel(id: "5", name: "mehmonga borish", day: DateTime.now()),
    ];

    List<RejaModel> get listTodo => _listTodo;

    void addTodo(String name,DateTime day){
        _listTodo.add(RejaModel(id: "${_listTodo.length +1}", name: name, day: day));
  }
}
