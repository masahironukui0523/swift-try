import Cocoa

// ①Time complexity - it can help predict scalability.

// 1 Constant time O(1).
func checkFirsr(names: [String]){
    if let first = names.first {
        print(first)
    } else {
        print("no menbers")
    }
}

var arr = ["masa", "taka", "risa", "taku", "sanadamaru"]


// 2 Liner Time O(n).
func printNames(names: [String]) {
    for name in names {
        print(name)
    }
}


// 3 Quadratic time O(n^2).
func printNames2(names: [String]) {
    for _ in names {
        for name in names {
            print(name)
        }
    }
}


// 4 Locarithmic time O(log n)
let numbers = [1, 3, 56, 66, 68, 80, 99, 105, 450, 459]

func checkFunc(arr: [Int], target: Int) -> Bool {
    
    let middle = arr.count/2
    
    // if target is smaller than middle of array, check only left side from middle of array.
    if target <= arr[middle] {
        for num in 0...middle {
            if arr[num] == target {
                return true
            }
        }
    // if target is larger than middle of array, check only left side from middle of array.
    } else {
        for num in middle..<arr.count {
            if arr[num] == target {
                return true
            }
        }
    }
    
    return false

}

checkFunc(arr: numbers, target: 66)


// 5 Quasilinear time O(n log n)


// ②Space complexity - it can measure the resouces required for the alcorithm to run.

