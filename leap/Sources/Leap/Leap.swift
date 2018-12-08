//Solution goes in Sources
import Foundation

struct Year {
    
    var calendarYear: Int!
    
    var isLeapYear: Bool {
        return calendarYear % 400 == 0 || (calendarYear % 100 != 0 && calendarYear % 4 == 0)
    }
}
