//Solution goes in Sources
import Foundation

struct DNA {
    
    private let strand: String
    
    private var nucleotideCounts = ["A":0, "G":0, "C":0, "T":0]
    
    init?(strand: String) {
        let regexString = "^[ATCG]*$"

        let predicate = NSPredicate(format: "SELF MATCHES %@", regexString)
        guard predicate.evaluate(with: strand) else { return nil }
        self.strand = strand
        
        
        self.strand.forEach {
            self.nucleotideCounts[String($0)] = self.nucleotideCounts[String($0)]! + 1
        }
        
    }
    
    func count(_ str: String) -> Int {
        return nucleotideCounts[str] ?? 0
    }
    
    func counts() -> [String: Int] {
        return nucleotideCounts
    }
    
}
