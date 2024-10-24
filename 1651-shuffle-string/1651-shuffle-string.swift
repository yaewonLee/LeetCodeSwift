class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var result = Array(repeating: " ", count: s.count) 
        let characters = Array(s)
        
        for i in 0..<s.count {
            result[indices[i]] = String(characters[i])
        }      
        return result.joined()
    }
}
