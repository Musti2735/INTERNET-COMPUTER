import Map "mo:base/HashMap";
import Text "mo:base/Text";

// actor -> canister -> smart contract

actor projectName {
// motoko type langue oldıuğu için öncelikel type'ları oluşturuyoruz.

type Name = Text;
type Phone = Text;

type Entry = {
  desc: Text;
  phone: Phone;
};

//variable -- var değiştirilebilir mutable, let değiştirilemez immutable.

let phoneBook = Map.HashMap<Name, Entry>(0, Text.equal, Text.hash);

// fonksiyonlar
// quary -> sorgulama
// update -> güncelleme

public func insert(name:Name, entry:Entry) : async () {
phoneBook.put(name, entry);
};

public query func lookup(name:Name) : async ?Entry{
  phoneBook.get(name) 
};

};