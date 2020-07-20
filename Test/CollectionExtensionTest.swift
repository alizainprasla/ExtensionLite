//
//  CollectionExtensionTest.swift
//  ExtensionLite
//
//  Created by Ali Zain on 21/07/2020.
//

import XCTest

class CollectionExtensionTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_collectionToJSON_dontThrowException() {
        let dictionary = [[Any]]()
        XCTAssertNoThrow(try dictionary.json())
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
