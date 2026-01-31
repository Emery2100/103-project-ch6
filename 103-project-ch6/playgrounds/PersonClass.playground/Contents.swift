import UIKit

class Person {
    
    //Attributes (Properties)
    var name: String
    var age: Int
    var job: String
    var city: String
    
    // Initializer
    init (name: String, age: Int, job: String, city: String) {
        self.name = name
        self.age = age
        self.job = job
        self.city = job
    }
    
    // Method (Behavior - What an object can do)
    func introduce(){
        print("Hi, my name is \(name), I'm \(age) years old, and I work as a \(job) in \(city).")
    }
}

//1. Create a Person(Create an Object)
let person1 = Person(name: "David", age: 34, job: "Software Engineer", city: "Las Vegas")
let person2 = Person(name: "Jane", age: 22, job: "Photographer", city: "London")

// 2. access an attribute using the dot notation
print(person1.age)
print(person2.city)

// 3. Change Values
person1.city = "San Diego"
print(person1.city)


// 4. Call a method
person1.introduce()
