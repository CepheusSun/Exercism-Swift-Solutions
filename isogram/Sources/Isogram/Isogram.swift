//Solution goes in Sources
import Foundation

struct Isogram {
    static func isIsogram(_ s: String) -> Bool {
        var tmp = s.lowercased()
        var res = true
        tmp.removeAll {
            return String($0) == " " || String($0) == "-"
        }
        tmp.reduce([:]) {
            var res = $0
            let count: Int = ($0[$1] ?? 0) as! Int
            res[$1] = count + 1
            return res
            }.values.forEach { if ($0 as! Int) > 1 { res = false} }
        return res
    }
}
