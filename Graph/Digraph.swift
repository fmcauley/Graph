//
//  Digraph.swift
//  Graph
//
//  Created by Frank McAuley on 10/13/20.
//

import Foundation
class Digraph {
    var edges : [Vertex:[Vertex]]
    
    init(){
        edges = [Vertex:[Vertex]]()
    }
    
    func addVertext(_ vertex: Vertex) {
        if edges[vertex] == nil {
            edges[vertex] = [Vertex]()
        }
    }
    
    func addEdge(_ edge: Edge) {
        if edges[edge.source] != nil && edges[edge.destination] != nil {
            edges[edge.source]?.append(edge.destination)
        }
    }
    
    func childrenOf(_ vertex: Vertex) -> [Vertex] {
        var children = [Vertex]()
        if let value = self.edges[vertex] {
            children = value
        }
        
        return children
    }
}
