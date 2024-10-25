class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var array = s.split(separator: " ")
        
            return array.removeLast().count
    }
}