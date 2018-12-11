//Solution goes in Sources
import Foundation

class GradeSchool {
    
    struct Student {
        let name: String
        let grade: Int
    }
    
    private var list: [Student] = []
    
    func addStudent(_ name: String, grades: Int) {
        list.append(Student(name: name, grade: grades))
    }
    
    var roster: [Int: [String]] {
        return [:]
    }
    
    var sortedRoster: [[Int: [String]]] {
        
        list.sort(by: { return $0.grade > $1.grade} )
        
        return []
    }
}

