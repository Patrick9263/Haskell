-- :script C:\Users\Patrick\HaskellProjects\Queue.txt
:! cls


append(value, queue) = queue ++ [value]

:{
enqueue(queue, item) =
  do putStrLn "h"
  let result = append(item, queue) in result

:}


dequeue(queue) = (head queue,tail queue)



emptyQueue = []

q1 = enqueue(emptyQueue, 1)

q2 = enqueue(q1, 100)

q3 = enqueue(q2, 200)
