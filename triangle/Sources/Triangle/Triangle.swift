//Solution goes in Sources
import Foundation

struct Triangle {
    
    enum Kind: String {
        case Equilateral, Isosceles, Scalene, ErrorKind
    }
    
    var kind: String
    
    init(_ a: Double, _ b: Double, _ c: Double) {

        let sorted = [a, b, c].sorted()
        switch true {
        case sorted[0] <= 0, sorted[0] + sorted[1] <= sorted[2]:
            kind = "ErrorKind"
        case sorted[0] == sorted[2]:
            kind = "Equilateral"
        case sorted[0] == sorted[1], sorted[1] == sorted[2]:
            kind = "Isosceles"
        default:
            kind = "Scalene"
        }

    }
    
    
}
