class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict = [Int: Int]()

        for i in nums {
            dict[i, default: 0] += 1
        }

        // value가 모두 1이면 false 반환
        // 하나라도 2 이상이면 true
        return dict.values.contains { $0 >= 2 }
    }
}