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
    then --do
      --putStr (show currentItem);
      --putStr " ";
      largeQueue(enqueue(queue, currentItem),nextList)
      else queue
:}

example = [1..10000000000000000000000000000000000000000000000000000000000000000]
a = dequeue([1..10000000000000000000000000000000000000000000000000000000000000])
b = enqueue(example,10000000000000000000000000000000000000000000000000000000000)
c = largeQueue(example,[1..100000000000000000000000000000000000000000000000000])
d = largeQueue([1..50],[1..100000])

test1 = [1..10000000000000000000000000000000000000000000000000000000]
test2 = fst (dequeue test1)
test3 = enqueue(test1,10000000000000000000000)
test4 = fst (dequeue test3)






:{
f :: Int -> Int
f 0 = 1
f 1 = 5
f 2 = 2
f _ = -1
:}



putStrLn ""
putStrLn "Process finished with exit code 0"
