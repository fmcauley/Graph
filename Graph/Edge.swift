//
//  Edge.swift
//  Graph
//
//  Created by Frank McAuley on 10/13/20.
//

import Foundation
class Edge {
    var source: Vertex
    var destination: Vertex
    
    init(_ source: Vertex, _ destination: Vertex) {
        self.source = source
        self.destination = destination
    }
}
