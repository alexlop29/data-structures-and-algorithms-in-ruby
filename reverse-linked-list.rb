<<-DOC
Given the head of a singly linked list, reverse the list, and return the reversed list.

Example 1:
Input: head = [1,2,3,4,5]
Output: [5,4,3,2,1]

Example 2:
Input: head = [1,2]
Output: [2,1]

Example 3:
Input: head = []
Output: []

Constraints:
The number of nodes in the list is the range [0, 5000].
-5000 <= Node.val <= 5000
DOC

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def linkedListToArray(head)
    arrayOfLinkedList = []
    while head != nil do
        arrayOfLinkedList.append(head.val)
        head = head.next
    end
    return arrayOfLinkedList
end

def reverse_list(head)
    arrOfHead = linkedListToArray(head)
    arrOfHead.reverse!

    if arrOfHead.length == 0
        return nil
    end

    newHead = ListNode.new(arrOfHead[0])
    current = newHead
    length = (arrOfHead.length) - 1

    for index in 1..length do
        current.next = ListNode.new(arrOfHead[index]);
        current = current.next
    end

    return newHead
end
