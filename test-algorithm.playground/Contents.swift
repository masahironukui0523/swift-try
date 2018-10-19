import Foundation

var arrayN = [3, 2, 9, 8]

var target = 10


func ans(arr: [Int], tar: Int) -> (Int, Int)? {
    
    var tempArr = [Int: Int]()
    
    for (index, value)  in arr.enumerated() {
        var ans = target - value
        
        if let ans = tempArr[ans] {
            return (index, ans)
        } else {
            tempArr[value] = index
            
        }
        
    }
    
    
    return nil
    
}

print(ans(arr: arrayN, tar: target))
