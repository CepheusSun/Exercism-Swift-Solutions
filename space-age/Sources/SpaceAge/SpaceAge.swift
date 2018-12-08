//Solution goes in Sources
import Foundation

struct SpaceAge {
    
    var seconds: Int!
    
    var onEarth, onMercury,
    onVenus, onMars,
    onJupiter, onSaturn,
    onUranus, onNeptune: Double!
    
    /*
     Mercury: 0.2408467
     Venus: 0.61519726
     Mars: 1.8808158
     Jupiter: 11.862615
     Saturn: 29.447498
     Uranus: 84.016846
     Neptune: 164.79132
     */
    
    init(_ age: Int) {
        seconds = age
        
        onMercury = getAge(0.2408467)
        onVenus = getAge(0.61519726)
        onEarth = getAge(1.0)
        onMars = getAge(1.8808158)
        onJupiter = getAge(11.862615)
        onSaturn = getAge(29.447498)
        onUranus = getAge(84.016846)
        onNeptune = getAge(164.79132)
    }
    
    private func getAge(_ scale: Double) -> Double {
        return round( Double(self.seconds) / (315576.0 * scale)) / 100.0
    }
    
}
