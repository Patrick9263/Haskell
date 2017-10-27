-- :script C:\Users\Patrick\HaskellProjects\Queue.hs
:! cls


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
    then
      do
      --(show currentItem)
      -- ++ " "
      largeQueue(enqueue(queue, currentItem),nextList)
      else queue
:}

largeQueue2(queue, list) = queue ++ list

example = [1..100000000000000]
a = dequeue([1..10000000000000])
example2 = dequeue(example)
a = enqueue(example, 1000)
b = largeQueue(example, [1..10000000])
c = largeQueue2(example,[1..10000000])


putStrLn ""
putStrLn "Process finished with exit code 0"
