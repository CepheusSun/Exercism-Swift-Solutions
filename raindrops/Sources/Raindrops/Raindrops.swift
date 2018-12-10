//Solution goes in Sources
import Foundation

struct Raindrops {
    
    private let times: UInt
    
    init(_ times: UInt) {
        self.times = times
    }
    
    var sounds: String {
        get {
            var res = ""
            if times % 3 == 0 {
                res.append("Pling")
            }
            if times % 5 == 0 {
                res.append("Plang")
            }
            if times % 7 == 0 {
                res.append("Plong")
            }
            return res == "" ? "\(times)" : res
        }
    }

}
