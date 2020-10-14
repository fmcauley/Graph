//
//  Vertex.swift
//  Graph
//
//  Created by Frank McAuley on 10/13/20.
//

import Foundation

class Vertex : CustomStringConvertible, Hashable {
    
    static func == (lhs: Vertex, rhs: Vertex) -> Bool {
        return lhs.value == rhs.value
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(value)
    }
    
    var description: String = "**Vertex**"
    
    var value : String
    //for now will refactor to be generic
    
    init(withValue: String) {
        self.value = withValue
    }
}
