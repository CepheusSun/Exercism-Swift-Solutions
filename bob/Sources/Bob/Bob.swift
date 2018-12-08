//Solution goes in Sources
import Foundation

struct Bob {
    
    static let whiteSpace = CharacterSet.whitespacesAndNewlines
    static let upperCase = CharacterSet.uppercaseLetters
    static let lowerCase = CharacterSet.lowercaseLetters
    
    static func hey(_ input: String) -> String {
        let absobute = input.trimmingCharacters(in: whiteSpace)
        if absobute == "" {
            return "Fine. Be that way!"
        }
        if any(s: absobute, of: upperCase) && !any(s: absobute, of: lowerCase) {
            return "Whoa, chill out!"
        }
        if absobute.last == "?" {
            return "Sure."
        }
        return "Whatever."
    }
    
    
    private static func any(s:String, of set:CharacterSet) -> Bool {
        for c in s.unicodeScalars {
            if set.contains(c) { return true }
        }
        return false
    }
}
