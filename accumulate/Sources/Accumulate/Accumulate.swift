//Solution goes in Sources

extension Collection {
    
    func accumulate<E>(_ f: (Element) -> E) -> [E] {
        
        return self.map({ f($0 )})
    }
    

}
