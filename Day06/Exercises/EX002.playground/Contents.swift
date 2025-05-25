class Person {
    var name: String
    var age: Int
    var height: Double
    var weight: Double
    
    init(name: String, age: Int, height: Double, weight: Double) {
        self.name = name
        self.age = age
        self.height = height
        self.weight = weight
    }
    
    var imc: Double {
        return weight / (height * height)
    }
    
    var adult: Bool {
        if age >= 18 {
            return true
        }
        return false
    }
}

let felipe = Person(name: "Felipe Alafy", age: 19, height: 1.825, weight: 110.0)
print("\(felipe.name)'s imc is \(felipe.imc)")
print("Is \(felipe.name) an adult? \(felipe.adult)")
