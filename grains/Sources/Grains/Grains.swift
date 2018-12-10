//Solution goes in Sources
import Foundation

struct Grains {
    
    static var total = UInt64.max
    
    static func square(_ input: Int) throws -> UInt64 {
        let errorMsg = "Input[\(input)] invalid. Input should be between 1 and 64 (inclusive)"
        switch input {
        case 1...64:
            return UInt64(pow(2.0, Double(input - 1)))
        case ..<1:
            throw GrainsError.inputTooLow(errorMsg)
        case 64...:
            throw GrainsError.inputTooHigh(errorMsg)
        default: return 0
        }

    }
    
    enum GrainsError: Error {
        case inputTooLow(String)
        case inputTooHigh(String)
    }
}
