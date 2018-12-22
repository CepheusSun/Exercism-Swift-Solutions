//Solution goes in Sources
import Foundation

class GradeSchool {

    var roster = [Int:[String]]()
    
    func addStudent(_ name: String, grade: Int) {
        roster[grade] = (roster[grade] ?? []) + [name]
    }
    
    var sortedRoster: [Int: [String]] {
        var sorted = [Int:[String]]()
        for k in roster.keys.sorted() {
            sorted[k] = roster[k]!.sorted()
        }
        return sorted
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        return roster[grade] ?? []
    }
}


func xxx() {
    let school = GradeSchool()
    
    school.addStudent("a", grade: 100)
}
