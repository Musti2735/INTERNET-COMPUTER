import Map "mo:base/HashMap";
import Text "mo:base/Text";
import Iter "mo:base/Iter";
import Nat "mo:base/Nat";
import Hash "mo:base/Hash";

actor Assistant {
  type ToDo ={
    desc:Text;
    completed:Bool;
  };

  func natHash(n:Nat) : Hash.Hash{
    Text.hash(Nat.toText(n))
  };

 var todos = Map.HashMap<Nat, ToDo>(0, Nat.equal, natHash);

 var nextId:Nat =0;

 public query func getTodos():async [ToDo]{
  Iter.toArray(todos.vals());
 };

public func addTodo(desc:Text) : async Nat {
  let id = nextId;
  todos.put(id, {desc = desc; completed = false});
  nextId +=1;
  id
};

public func complatedTodo(id:Nat) : async(){
  ignore do ? {
    let desc = todos.get(id)!.desc;
    todos.put(id, {desc; completed = true});
  }
};

 public query func showTodos() : async Text {
    var output : Text = "\n___TO-DOs___";
    for (todo : ToDo in todos.vals()) {
      output #= "\n" # todo.desc;
      if (todo.completed) { output #= " ✔"; };
    };
    output # "\n"
  };

  public func clearCompleted() : async () {
    todos := Map.mapFilter<Nat, ToDo, ToDo>(todos, Nat.equal, natHash, 
              func(_, todo) { if (todo.completed) null else ?todo });
  };



}