<<-DOC
Given two strings s and goal, return true if and only if s can become goal after some number of shifts on s.
A shift on s consists of moving the leftmost character of s to the rightmost position.
For example, if s = "abcde", then it will be "bcdea" after one shift.
 
Example 1:
Input: s = "abcde", goal = "cdeab"
Output: true

Example 2:
Input: s = "abcde", goal = "abced"
Output: false

Constraints:
1 <= s.length, goal.length <= 100
s and goal consist of lowercase English letters.
DOC
# @param {String} s
# @param {String} goal
# @return {Boolean}
def rotate_string(s, goal)
    maxRotations = (s.length) - 1

    for rotation in 0..maxRotations do
        check = goal.index(s)
        if check != nil
            return true
        else
            removedChar = s.slice!(0)
            s.concat(removedChar)
        end
    end

    return false

end
