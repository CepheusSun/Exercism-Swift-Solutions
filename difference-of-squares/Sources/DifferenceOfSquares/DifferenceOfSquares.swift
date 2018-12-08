//Solution goes in Sources
import Foundation

struct Squares {
    
    private var list: [Int] = []
    
    init(_ value: Int) {
        for i in 1...value {
            self.list.append(i)
        }
    }
    
    var squareOfSum: Int {
        let sum = list.sum
        return sum * sum
    }
    
    var sumOfSquares: Int {
        return list.map { $0 * $0 }.sum
    }
    
    var differenceOfSquares: Int {
        return squareOfSum - sumOfSquares
    }
}

extension Array where Element == Int {

    var sum: Int {
        return self.reduce(0, +)
    }
}
