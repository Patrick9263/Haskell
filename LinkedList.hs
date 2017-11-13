-- :script C:\Users\Patrick\HaskellProjects\LinkedList.hs
import System.Process
clear = system "cls"
clear

push(list, value) = value : list

addFirst(value, linkList) = push(linkList,value)

:{
addLast(value, linkList) =
  let
    rev = reverse linkList
    add = addFirst(value, rev)
    result = reverse add
    in result
:}

:{
removeLast(linkList) =

:}

link = []
link2 = addFirst(1, link)
link3 = addFirst(2, link2)
link4 = addFirst(3, link3)
link5 = addFirst(4, link4)

link6 = addLast(0, link5)
