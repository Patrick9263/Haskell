-- :script C:\Users\Patrick\HaskellProjects\LinkedList.hs
import System.Process
clear = system "cls"
clear

addFirst(value, linkList) = ((), value : snd linkList)
removeFirst(linkList) = (head (snd linkList), tail (snd linkList))
removeLast(linkList) = (last (snd linkList), init (snd linkList))
addLast(value, linkList) = ((), snd linkList ++ [value])


link = ((), [])
link2 = addFirst(1, link)
link3 = addFirst(2, link2)
link4 = addFirst(3, link3)
link5 = addFirst(4, link4)

link6 = addLast(0, link5)
link7 = addLast(-1, link6)

link8 = removeFirst(link7)
addFirst(5, link8)
