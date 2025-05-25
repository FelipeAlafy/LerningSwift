
//Extensions, allow us to complement a already created class or struct, like in the example below. This class or struct might be yours or not.
extension String {
    func getStringLength() -> Int {
        var c = 0
        for i in self {
            c += 1
        }
        return c
    }
}

//See the example
let text = "Felipe Alafy"
print(text.getStringLength())
