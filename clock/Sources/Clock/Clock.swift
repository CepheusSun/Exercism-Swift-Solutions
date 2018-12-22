//Solution goes in Sources
import Foundation

struct Clock: CustomStringConvertible, Equatable {
    
    private var hours: Int = 0
    private var minutes: Int = 0
    
    init(hours: Int, minutes: Int = 0) {

        self.hours = hours % 24
        self.hours += minutes / 60
        self.minutes = minutes % 60
        self.hours %= 24

        if self.minutes < 0 {
            self.minutes = 60 + self.minutes
            self.hours -= 1
        }
        if self.hours < 0 {
            self.hours = 24 + self.hours
        }
    }
    
    func add(hours: Int = 0, minutes: Int = 0) -> Clock {
        
        let h = self.hours
        let m = self.minutes
        return Clock(hours: h, minutes: m + minutes)
    }
    
    func subtract(hours: Int = 0, minutes: Int = 0) -> Clock {
        
        let h = self.hours
        let m = self.minutes
        return Clock(hours: h, minutes: m - minutes)
        
    }
    
    var description: String {
        
        return String(format: "%02d:%02d", hours, minutes)
    }
    
    public static func == (lhs: Clock, rhs: Clock) -> Bool {
        return lhs.hours == rhs.hours && lhs.minutes == rhs.minutes
    }
    
}
