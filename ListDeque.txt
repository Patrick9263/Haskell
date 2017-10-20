-- :script C:\Users\Patrick\HaskellProjects\ListDeque.txt
:! cls

append(item, list) = list ++ [item]

:{
addLast(items, deque) =
  let
    n = length items
    addCurrent = append(head items, deque)
    nextItems = tail items
    in
    if n == 0
      then deque
      else addLast(nextItems, addCurrent)
:}

:{
addFirst(items, deque) =
  let
    n = length items
    currentItem = head items
    nextItems = tail items
    addCurrent = currentItem : deque
    in
    if n == 0
      then deque
      else addFirst(nextItems, addCurrent)
:}



-- Test cases:

removeLast(deque) = (last deque,reverse (tail (reverse deque)))
removeFirst(deque) = (head deque, tail deque)
addLast([1,2,3], [0])
addFirst([1,2,3], [0])

test = removeFirst([1,2,3])
test

test2 = removeLast([1,2,3])
test2



putStrLn ""
putStrLn "Process finished with exit code 0"
