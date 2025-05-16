import math_h
class rectangle {
    var base: Double
    var height: Double
    
    init(Base: Double, Height: Double) {
        self.base = Base
        self.height = Height
    }
    
    func calculatePerimeter() -> Double {
        return ((base * 2) + (height * 2))
    }
    
    func calculateArea() -> Double {
        return (base * height)
    }
}


let rec = rectangle(Base: 20, Height: 15)
print("Perimeter: \(rec.calculatePerimeter())")
print("Area: \(rec.calculateArea())")
