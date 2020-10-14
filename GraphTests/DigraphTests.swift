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
        
        
        //XCTAssertEqual(digraph.edges[source], destination)
    }
}
