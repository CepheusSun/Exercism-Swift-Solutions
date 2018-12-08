//Solution goes in Sources
import Foundation


struct Gigasecond {

    init?(from: String) {
        let dateFormatter = DateFormatter()
//        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        let date = dateFormatter.date(from: from)
        if let date = date {
            let later = date.addingTimeInterval(1_000_000_000)
            description = dateFormatter.string(from: later)
        } else {
            return nil
        }
    }
    var description: String = ""
}



