//Solution goes in Sources

struct ListOps {
    static func append<T>(_ lhs: [T], _ rhs: [T]) -> [T] {
        return lhs + rhs
    }
    
    static func concat<T>(_ input: [T]... ) -> [T] {
        var res = [T]()
        for item in input {
            item.forEach { res.append($0) }
        }
        return res
    }
    
    static func filter<T>(_ input: [T], _ closure: (T)-> Bool ) -> [T] {
        
        var res = [T]()
        for item in input {
            if closure(item) == true {
                res.append(item)
            }
        }
        return res
    }
    
    static func length<T>(_ input: [T]) -> Int {
        var res = 0
        for _ in input {
            res += 1
        }
        return res
    }
    
    static func map<T, K>(_ input: [T], _ closure: (T)-> (K) ) -> [K] {
        
        var res = [K]()
        for item in input {
            res.append(closure(item))
        }
        return res
    }
    
    static func foldLeft<T,K>(_ input: [T], accumulated: K, combine: (K, T) -> (K)) -> K {
        var res = accumulated
        for item in input {
            res = combine(res, item)
        }
        return res
    }
    
    static func foldRight<T, K>(_ input: [T], accumulated: K, combine: (T, K) -> (K)) -> K {

        if input.count == 0 { return accumulated }
        var res = accumulated
        for item in self.reverse(input) {
            res = combine(item, res)
        }
        return res
    }
    
    static func reverse<T>(_ input: [T]) -> [T] {
        var res = [T]()
        for item in input {
            res = self.append([item], res)
        }
        return res
    }
}
