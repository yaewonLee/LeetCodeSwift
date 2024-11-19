class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        let jewelsSets = Set(jewels)
        var count = 0

        for i in stones {
            if jewelsSets.contains(i) {
                count += 1
            }
        }
        return count
    }
}