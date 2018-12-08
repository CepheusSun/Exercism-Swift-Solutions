//Solution goes in Sources
import Foundation

struct Nucleotide {
    var dna: String
    
    init(_ dna: String) {
        self.dna = dna
    }
    
    func complementOfDNA() throws -> String {
        
        var rna = ""
        for c in dna {
            let res = try convert(c)
            rna = rna + String(res)
        }
        return rna
    }
    
    func convert(_ s: Character) throws -> Character {
        switch s {
        case "G": return "C"
        case "T": return "A"
        case "A": return "U"
        case "C": return "G"
        default: throw RnaTranscription.TranscriptionError.invalidNucleotide("\(s) is not a valid Nucleotide")
        }
    }
    

}

struct RnaTranscription {
    
    enum TranscriptionError: Error, CustomStringConvertible {
        
        case invalidNucleotide(String)
        
        var description: String {
            switch self {
            case .invalidNucleotide(let c): return c
            }
        }
        
    }
}
