<<-DOC
Given a string s, find the first non-repeating character in it and return its index.
If it does not exist, return -1.

Example 1:
Input: s = "leetcode"
Output: 0

Example 2:
Input: s = "loveleetcode"
Output: 2

Example 3:
Input: s = "aabb"
Output: -1

Constraints:
1 <= s.length <= 105
s consists of only lowercase English letters.
DOC
# @param {String} s
# @return {Integer}
def first_uniq_char(s)
    arrOfS = s.split("")
    length = (arrOfS.length)-1
    index = 0

    while index <= length
        char = arrOfS[index]
        arrOfS.slice!(index)
        if arrOfS.index(char) == nil
            return index
        else
            arrOfS.insert(index, char)
        end
        index += 1
    end

    return -1
end
