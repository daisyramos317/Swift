
import Foundation

let methodStart = NSDate()


func grammarNazi(i: Int) -> String {
    var word: String
    switch i {
        
    case 1:
        word = "bottle"
        
    default:
        word = "bottles"
    }
    
    return word
}

for var i in (1...99).reversed() {
    
    var n: String = String(i)
    var b = grammarNazi(i: i)
    
    print("\(i) \(b) of beer on the wall, \(n) \(b) of beer.")
    i -= 1
    
    let next = String(i)
    n = i == 0 ? "0" : next
    
    print("Take one down and pass it around, \(n) \(b) of beer on the wall.")
    print("")
    
}

NSLog("Total time: %f", NSDate().timeIntervalSince(methodStart as Date))