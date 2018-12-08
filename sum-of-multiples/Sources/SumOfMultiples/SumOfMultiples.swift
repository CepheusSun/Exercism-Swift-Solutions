//Solution goes in Sources
import Foundation

struct SumOfMultiples {
    
    static func toLimit(_ value: Int, inMultiples: [Int] = []) -> Int {
        if value < inMultiples.min() ?? 0 {
            return 0
        }
        
        if value <= 1 {
            return 0
        }
        return (1..<value).filter({ s -> Bool in
            
            for i in inMultiples.filter({$0 != 0}) {
                if s % i == 0 {
                    return true
                }
            }
            return false
        }).reduce(0, +)
    }
}
