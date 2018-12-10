//Solution goes in Sources
import Foundation

struct DNA {
    
    private let strand: String
    
    private var nucleotideCounts = ["A":0, "G":0, "C":0, "T":0]
    
    init?(strand: String) {
        
//        let regexString = "^[ATCG]*$"
//
//        let predicate = NSPredicate(format: "SELF MATCHES %@", regexString)
//        guard predicate.evaluate(with: strand) else { return nil }
//        self.strand = strand

        guard Set(strand).isSubset(of: Set("ATCG")) else {
            return nil
        }
        self.strand = strand
        
        self.nucleotideCounts = "ATCG".map(String.init).reduce(into: [:]) { (d, s) in
            let v = strand.filter({String($0) == s}).count
            d[s] = v
        }
        
    }
    
    func count(_ str: String) -> Int {
        return nucleotideCounts[str] ?? 0
    }
    
    func counts() -> [String: Int] {
        return nucleotideCounts
    }
    
}
