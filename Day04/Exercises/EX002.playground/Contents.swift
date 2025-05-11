func sayName(name: String?) {
    guard let n = name else {
        print("Undefined name")
        return
    }
    print(n)
}

sayName(name: nil)
sayName(name: "Felipe Alafy")
