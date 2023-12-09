<<-DOC
Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
Note that you must do this in-place without making a copy of the array.

Example 1:
Input: nums = [0,1,0,3,12]
Output: [1,3,12,0,0]

Example 2:
Input: nums = [0]
Output: [0]
 
Constraints:
1 <= nums.length <= 104
-231 <= nums[i] <= 231 - 1
DOC

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    index = 0
    length = nums.length - 1

    while index <= length do
        num = nums[index]
        if num == 0
            nums.delete_at(index)
            nums.append(0)
            length -= 1
        else
            index += 1
        end
    end
end
