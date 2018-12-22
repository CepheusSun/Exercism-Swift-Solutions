//Solution goes in Sources

import Foundation

struct ETL {
    static func transform(_ old: [Int: [String]]) -> [String: Int] {
        
        var res: [String: Int] = [:]
        for (key, value) in old {
            value.forEach {
                res[$0.lowercased()] = key
            }
        }
        return res
    }
}
