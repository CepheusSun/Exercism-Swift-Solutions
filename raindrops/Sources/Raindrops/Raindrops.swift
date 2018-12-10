//Solution goes in Sources
import Foundation

struct Raindrops {
    
    private let times: UInt
    
    init(_ times: UInt) {
        self.times = times
    }
    
    var sounds: String {
        get { 
           let res = [(3, "Pling"),
                      (5, "Plang"),
                      (7, "Plong")].map({ times % $0 == 0 ? $1 : "" })
            .joined()
            return res == "" ? "\(times)" : res
        }
    }

}
