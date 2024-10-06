class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var start = 0
        var end = nums.count - 1

        while start <= end {
            let mid = (start + end) / 2

            if nums[mid] == target {
                return mid
            } else if target < nums[mid] {
                end = mid - 1
            } else {
                start = mid + 1
            }
        }
        return -1
    }
}