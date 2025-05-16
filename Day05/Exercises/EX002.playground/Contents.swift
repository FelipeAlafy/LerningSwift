struct restaurant {
    let name = "Felipe`s sushi bar"
    let TypeOfFood = "Sea Fruits and sushi"
    var orders: Int = 0
    
    mutating func makeOrder() {
        orders += 1
    }
    
    mutating func calculateTotalOrder() -> Int {
        return (orders * 35)
    }
}


var res = restaurant()
res.makeOrder()
res.makeOrder()
res.makeOrder()
res.makeOrder()
print("Total orders R$ \(res.calculateTotalOrder()),00")
