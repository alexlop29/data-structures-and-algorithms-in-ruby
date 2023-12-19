<<-DOC
Given a binary array nums, return the maximum number of consecutive 1's in the array.

Example 1:
Input: nums = [1,1,0,1,1,1]
Output: 3
Explanation: The first two digits or the last three digits are consecutive 1s. The maximum number of consecutive 1s is 3.

Example 2:
Input: nums = [1,0,1,1,0,1]
Output: 2
 
Constraints:
1 <= nums.length <= 105
nums[i] is either 0 or 1.
DOC
# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
    max = 0
    currCounter = 0

    nums.each { |num|
        if num == 1
            currCounter += 1
        else
            currCounter > max ? max = currCounter : ''
            currCounter = 0
        end
    }

    return currCounter > max ? currCounter : max
end
