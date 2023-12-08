<<-DOC
Given two strings s and t, return true if t is an anagram of s, and false otherwise.
An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

Example 1:
Input: s = "anagram", t = "nagaram"
Output: true

Example 2:
Input: s = "rat", t = "car"
Output: false
 
Constraints:
1 <= s.length, t.length <= 5 * 104
s and t consist of lowercase English letters.

DOC
def is_anagram(s, t)
    sArray = s.split("")
    tArray = t.split("")

    if sArray.length != tArray.length
        return false
    end

    tArray.each { |char|
        index = sArray.index(char)
        if index != nil
            sArray.delete_at(index)
        end
    }

    if sArray.empty?
        return true
    end

    return false
end
