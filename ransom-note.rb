<<-DOC
Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.
Each letter in magazine can only be used once in ransomNote.

Example 1:
Input: ransomNote = "a", magazine = "b"
Output: false

Example 2:
Input: ransomNote = "aa", magazine = "ab"
Output: false

Example 3:
Input: ransomNote = "aa", magazine = "aab"
Output: true
 
Constraints:
1 <= ransomNote.length, magazine.length <= 105
ransomNote and magazine consist of lowercase English letters.
DOC

def can_construct(ransom_note, magazine)
    ransomNoteArray = ransom_note.split("")
    magazineArray = magazine.split("")

    magazineArray.each { |char|
        index = ransomNoteArray.index(char)
        if index != nil
            ransomNoteArray.delete_at(index)
        end
    }

    if ransomNoteArray.empty?
        return true
    end

    return false
end
