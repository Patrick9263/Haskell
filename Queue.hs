-- :script C:\Users\Patrick\HaskellProjects\Queue.hs
import System.Process
clear = system "cls"
clear

append(list, value) = list ++ [value]
enqueue(queue, item) = append(queue, item)
dequeue(queue) = (head queue,tail queue)

q1 = []
q2 = enqueue(q1, 100)
q3 = enqueue(q2, 200)
q4 = enqueue(q3, 300)
-- O(1)?
-- monads
:{
largeQueue(queue, list) =
  let
  currentItem = head list
  nextList = tail list
  in
  if length list > 0
    then do
      putStr (show currentItem);
      putStr " ";
      largeQueue(enqueue(queue, currentItem),nextList)
      else return ""
:}

example = [1..10000000000000000000000000000000000000000000000000000000000000000]
a = dequeue([1..10000000000000000000000000000000000000000000000000000000000000])
b = enqueue(example,10000000000000000000000000000000000000000000000000000000000)
c = largeQueue(example,[1..100000000000000000000000000000000000000000000000000])
largeQueue([1..500],[1..100])






putStrLn ""
putStrLn "Process finished with exit code 0"
