/**
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
 - Make equatable
 - Implement isSubset

 **/

struct Bag<ELEMENT:Hashable>{
    typealias HashId = Int
    var elements:[HashId:Item] = [:]
}

extension Bag{
    struct Item {
        var element:ELEMENT
        var count:Int
    }
}

extension Bag{
    mutating func add(element:ELEMENT){
        var item = elements[element.hashValue] ?? Item(element: element, count: 0)
        item.count = item.count + 1
        elements[element.hashValue] = item
    }
    
    mutating func remove(element:ELEMENT){
        var item = elements[element.hashValue] ?? Item(element: element, count: 0)
        item.count = item.count - 1
        
        guard item.count > 0 else{
            elements[element.hashValue] = nil
            return
        }
        
        elements[element.hashValue] = item
    }
    
    func count(element:ELEMENT)->Int{
        guard let item = elements[element.hashValue] else {
           return 0
        }
        return item.count
    }
}
