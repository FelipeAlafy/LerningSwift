// Optionals are the way how swift manages null safety, when we have a variable that can return nil, we should treat it with options, see the example below:
var name: String? //Notice that this variable doesn't get any value at its creation, so we must put an question mark ? at the end of the Data Type, this is an Optional variable.

name = "Felipe"
print(name)
// You have seen that the print out of name, returns something like Optional("Felipe") on the console, this means that our variable is currently wrapped arround an Optional, in order to get its correct value we must unwrap it.
// If you want to see what happens when you get a nil, from an optional uncomment the folling lines below:

/*
 var num = Int?
 print(num)
*/

// there are some ways to unwrap optionals in swift, lets see:
// Brute force way of unwraping, is by putting an exclamation mark, !, at the end of the variable, but this way is not recommended.
print(name!)

// Another way, a more secure way than the previous
if name != nil {
    print(name!)
}

//Unwrapping using if let, the variable unwrappedName is only created in case of the value in name is not a nil value.
if let unwrappedName = name {
    print(unwrappedName)
}

//Mutiple if let
var mobile: String?
mobile = "39849584"

if let unwrappedName = name {
    if let unwrappedMobile = mobile {
        print(unwrappedName)
        print(unwrappedMobile)
    }
}


//Another way of unwrapping values is by using the guard let, else {}. See the function login
login(user: "Felipe Alafy", password: "36738748")
login(user: nil, password: "36738748")

func login(user: String?, password: String?) {
    guard let user = user, let password = password else { print("Login not founded "); return }
    print("\(user) logged in, with password \(password)")
}

//For last but not least, using this way:
var src: String?

print(src ?? "Source code not founded.") // If src have nil, it return whats after the ??.
