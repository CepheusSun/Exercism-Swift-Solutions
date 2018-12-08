//Solution goes in Sources
import Foundation

struct Squares {
    
    private var value: Int!
    
    init(_ value: Int) {
        self.value = value
    }
    
    var squareOfSum: Int {
        
        let sum = (1...value).reduce(0, +)
        return sum * sum
    }
    
    var sumOfSquares: Int {
        return (1...value).map { $0 * $0 }.reduce(0, +)
    }
    
    var differenceOfSquares: Int {
        return squareOfSum - sumOfSquares
    }
}
