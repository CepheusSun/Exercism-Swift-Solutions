//Solution goes in Sources
import Foundation

struct Hamming {
    
    static func compute(_ input: String, against: String) -> Int? {
        guard input.count == against.count else { return nil }

        return zip(input, against).filter({$0 != $1}).count
    }
}
