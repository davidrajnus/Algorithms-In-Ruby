 #  Given a linked list and integer n, return the element n
 # spaces from the last node in the list.  Do not call the
 # 'size' method of the linked list.  Assume that n will always
 # be less than the length of the list.
 # --- Examples
 #    const list = new List();
 #    list.insertLast('a');
 #    list.insertLast('b');
 #    list.insertLast('c');
 #    list.insertLast('d');
 #    fromLast(list, 2).data // 'b'

require './fromlast/fromlast'

def fromLast(list, n)
  slow = list.getFirst
  fast = list.getFirst

  for x in 0...n
    fast = fast.next
  end

  while (fast.next)
    slow = slow.next
    fast = fast.next
  end

  return slow
end