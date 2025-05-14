//A set os a structure similar to an array, but it is unordered, so every run the order of the elements will change. Another aspect of a set is that it not allow duplicate values in it.
var names: Set<String> = ["Felipe", "Alafy", "Rodrigues", "Silva"]

//verifying that some value is hold by a set with method, .contains(value)
names.contains("Alafy")

//Set doesn't have position, so it only work with .insert(value) and doesn't have the argument at:
names.insert("Queiroz")
//Removing an element, .remove(value)
names.remove("Silva")

//The follow sentence below will not work
//names[0]

//getting the elements of a set
for i in names {
    print(i)
}

//Tuples, are another way to store data, see the syntax below:
var user1: (ID: Int, Name: String) = (ID: 1, Name: "Felipe")

//Retriving its values, there is to options, one is by using .0 for ID, .1 for Name, .2 for ..., the second option is by using the given name in time of the creation, .ID, .Name, ...
print(user1.0)
print(user1.Name)

//You are able to use typealias to split the : (ID: Int, Name: String) = ... from the rest, it makes more legible, see:
typealias userRegistration = (ID: Int, Name: String, CPF: String)
let user2: userRegistration = (ID: 2, Name: "Denis", "0000000000000")

//Recovering data from an tulle
var (id, name, cpf) = user2
print(id)
print(name)
print(cpf)


//Dictionary, are the last structure, its based in key-value method, see
var scores = [
    "Assignment": 20,
    "NoteTaking": 10,
    "Exame": 40,
    "FinalExame": 30
]

//To access data from a dictionary, use dictionaryName[keyName], it will return an optional, because swift can not guarantee that the key exist. So you will have to treat it.
print(scores["NoteTaking"] ?? 0)

//Changing a value.
scores["NoteTaking"] = 0

//The key may not exists, so the swift create a value for it. Otherwise it will only update. More secure than previous.
scores.updateValue(10, forKey: "OralAssignment")

//Deleting keys:
scores["NoteTaking"] = nil
//Or
//scores.removeValue(forKey: "NoteTaking")

//Getting data, there is three alternatives
for (key, value) in scores {
    print("\(key) -> \(value)")
}

for key in scores.keys {
    print("\(key)")
}

for value in scores.values {
    print("\(value)")
}
