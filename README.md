 # Implement a Multiset in Swift

 ## Requirements

 A multiset (aka countset or bag) is like a set, but you can add the same
 element multiple times, and it will keep track of the count of each
 added element.

 __Time complexity__

 - O(1) add element
 - O(1) remove element
 - O(1) count of specific element
 - O(1) total element count

 ## Extra points

 - Make generic
 - Return array of all items

```
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
```

```
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
```
