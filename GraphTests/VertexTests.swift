//
//  VertexTests.swift
//  GraphTests
//
//  Created by Frank McAuley on 10/13/20.
//

import XCTest
@testable import Graph

class VertexTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatVertexIsNotNil() throws {
        let vertex = Vertex(withValue: "test")
        XCTAssertNotNil(vertex)
    }
    
    func testThatVertexCanPrintItsValue() {
        let vertex = Vertex(withValue: "test")
        let output = vertex.description
        print(output)
    }

}
