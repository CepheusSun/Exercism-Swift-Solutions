//Solution goes in Sources
import Foundation

private let letters = Array(65...90).map{Character(UnicodeScalar($0))}
private let numbers: [Int] = Array(0..<1000)

extension Array {
    func random() -> Element {
        let i = arc4random_uniform(UInt32(self.count))
        return self[Int(i)]
    }
}

struct Robot {
    var name: String!
    static var namesInUse = Set<String>()
    
    init() {
        resetName()
    }
    
    mutating func resetName() {
        let oldName = name
        repeat {
            let alph = "\(letters.random())\(letters.random())"
            let nums = String(format: "%03d", numbers.random())
            name = alph + nums
        } while Robot.namesInUse.contains(name)
        if oldName != nil { Robot.namesInUse.remove(oldName!) }
    }
}
