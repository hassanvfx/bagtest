import XCTest
@testable import CodingChallenge

final class CodingChallengeTests: XCTestCase {
    func testAdding() {
        var bag = Bag<String>()
        let element = "test"
        bag.add(element: element)
        XCTAssertEqual(bag.count(element: element), 1)
        
        bag.add(element: element)
        XCTAssertEqual(bag.count(element: element), 2)
        
        bag.add(element: element)
        XCTAssertEqual(bag.count(element: element), 3)
    }
    
    
    func testRemoving() {
        var bag = Bag<String>()
        let element = "test"
        bag.add(element: element)
        bag.add(element: element)
        bag.add(element: element)
        XCTAssertEqual(bag.count(element: element), 3)
        
        bag.remove(element: element)
        XCTAssertEqual(bag.count(element: element), 2)
        
        bag.remove(element: element)
        XCTAssertEqual(bag.count(element: element), 1)
        
        bag.remove(element: element)
        XCTAssertEqual(bag.count(element: element), 0)
    }
    
    func testAllItems(){
        var bag = Bag<String>()
        let element = "test"
        bag.add(element: element)
        bag.add(element: element)
        bag.add(element: element)
        
        XCTAssertEqual(bag.allItems.count, 1)
        
        bag.add(element: "test2")
        
        XCTAssertEqual(bag.allItems.count, 2)
    }
    
    static var allTests = [
        ("testAdding", testAdding),
        ("testRemoving", testRemoving),
        ("testAllItems", testAllItems),
    ]
}
