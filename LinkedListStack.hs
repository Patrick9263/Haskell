-- :script C:\Users\Patrick\HaskellProjects\LinkedListStack.hs
import System.Process
clear = system "cls"
clear

addFirst(value, linkList) = value : linkList
removeFirst(linkList) = tail linkList
removeLast(linkList) = init linkList
addLast(value, linkList) = linkList ++ [value]

push(value, stack) = addFirst(value linkList)
pop(stack) = removeLast
