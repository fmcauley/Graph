//
//  EdgeTests.swift
//  GraphTests
//
//  Created by Frank McAuley on 10/13/20.
//

import XCTest
@testable import Graph
class EdgeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatEdgeIsNotNil() throws {
        let source = Vertex(withValue: "Columbus")
        let destination = Vertex(withValue: "New York")
        let edge = Edge(source, destination)
        XCTAssertNotNil(edge)
    }
    
    func testThatEdgeHasASourceAndDestinationVertex() {
        let source = Vertex(withValue: "Columbus")
        let destination = Vertex(withValue: "New York")
        let edge = Edge(source, destination)
        
    }
}
