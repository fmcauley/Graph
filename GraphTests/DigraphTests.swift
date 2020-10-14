//
//  DigraphTests.swift
//  GraphTests
//
//  Created by Frank McAuley on 10/13/20.
//

import XCTest
@testable import Graph

class DigraphTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatDigraphIsNotNil() throws {
        let digraph = Digraph()
        XCTAssertNotNil(digraph)
    }
    
    func testThatDigraphHasACollectionOfEdges() {
        let digraph = Digraph()
        let output = digraph.edges
        XCTAssertNotNil(output)
    }
    
    func testThatDigraphCanAddANewVertex() {
        let digraph = Digraph()
        let vertext = Vertex(withValue: "NOFX")
        let expected = 1
        digraph.addVertext(vertext)
        XCTAssertEqual(digraph.edges.count, expected)
    }
    
    func testThatAddingTheSavemVertextTwiceWillNotIncreaseEdgesCount() {
        let digraph = Digraph()
        let vertext = Vertex(withValue: "OFF!")
        let expected = 1
        digraph.addVertext(vertext)
        digraph.addVertext(vertext)

        XCTAssertEqual(digraph.edges.count, expected)
    }
    
    func testThatADigraphCanAddAnEdgeBetweenTwoVertices() {
        let digraph = Digraph()
        let source = Vertex(withValue: "SOA")
        let destination = Vertex(withValue: "Black Flag")
        digraph.addVertext(source)
        digraph.addVertext(destination)
    
        let edge = Edge(source, destination)
        digraph.addEdge(edge)
        
        let output = digraph.edges[edge.source]?.first
        
        XCTAssertEqual(output?.value, "Black Flag")
    }
    
    func testThatADigraphKnowsItsNumberOfChildren() {
        let digraph = Digraph()
        let source = Vertex(withValue: "Minor Threat")
        let destination = Vertex(withValue: "Fuguzi")
        let destination2 = Vertex(withValue: "DRI")
        
        digraph.addVertext(source)
        digraph.addVertext(destination)
        digraph.addVertext(destination2)
        
        let edge1 = Edge(source, destination)
        let edge2 = Edge(source, destination2)
        
        digraph.addEdge(edge1)
        digraph.addEdge(edge2)
        
        let output = digraph.childrenOf(source)
        
        let expected = 2
        
        XCTAssertEqual(output.count, expected)
        
    }
    
    func testThatNoChildrenArePresentWhenThereIsOneVertexAndNotEdgesAreAdded() {
        let digraph = Digraph()
        let vertex = Vertex(withValue: "Sting")
        let output  = digraph.childrenOf(vertex).count
        let expectedCount = 0
        XCTAssertEqual(output, expectedCount)
    }
    
    func testThatADigraphCanCheckIfItHasAVertex() {
        let digraph = Digraph()
        let vertex = Vertex(withValue: "Run the Jewels")
        digraph.addVertext(vertex)
        let output = digraph.hasVertex(vertex)
        XCTAssertTrue(output)
    }
    
    func testThatADigraphDoesNotHaveAVertex() {
        let digraph = Digraph()
        let vertex = Vertex(withValue:"Descendents")
        XCTAssertFalse(digraph.hasVertex(vertex))
    }
    
    func testThatAVertexInTheDigraphCanBereturnedByValue() {
        let digraph = Digraph()
        let vertex = Vertex(withValue: "Bad Brains")
        digraph.addVertext(vertex)
        let output = digraph.getVertex(vertex)
        let expected = "Bad Brains"
        
        XCTAssertEqual(output?.value, expected)
    }
}
