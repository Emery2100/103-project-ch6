import UIKit

// Create
var fruitsArray:[String] = ["Apple", "Orange", "Banana"]
var fruitsSet: Set<String> = ["Apple", "Orange", "Banana"]
var fruitsDictionary: [String:String] = [
    "Apple":"Red",
    "Orange":"Orange",
    "Banana":"Yellow"
]

print("---Create---")
print("Array: \(fruitsArray)")
print("Set: \(fruitsSet)")
print("Dictionary: \(fruitsDictionary)")

// Add
// Array -> append or insert
fruitsArray.append("Mango")

// Set -> insert
fruitsSet.insert("Mango")

// Dictionary - assign
fruitsDictionary["Mango"] = "Green"

print("---Add---")
print("Array: \(fruitsArray)")
print("Set: \(fruitsSet)")
print("Dictionary: \(fruitsDictionary)")

// Remove
// Array - remove  by index
fruitsArray.remove(at: 1)

// Set - remove by item or element
fruitsSet.remove("Banana")

// Dictionary - remove by value or by the key
fruitsDictionary.removeValue(forKey: "Banana")

print("---Remove---")
print("Array: \(fruitsArray)")
print("Set: \(fruitsSet)")
print("Dictionary: \(fruitsDictionary)")

// Serach/Contain
print("---Contain---")
print("Array contains Apple? \(fruitsArray.contains("Apple"))")
print("Set contains Apple? \(fruitsSet.contains("Apple"))")
print("Dictionary contains Apple? \(fruitsDictionary.keys.contains("Apple"))")

// Iterate
print("---Iterate---")
print("---Array---")
for fruit in fruitsArray {
    print(fruit)
}

print("---Set---")
for fruit in fruitsSet {
    print(fruit)
}

print("---Dictionary---")
for (fruit, color) in fruitsDictionary {
    print("\(fruit): \(color)")
}

print("---Sort---")
print("Array:", fruitsArray.sorted(by: >))
print("Set:", fruitsSet.sorted())

let sortedDictionary = fruitsDictionary.sorted{$0.value < $1.value}
print(sortedDictionary)
