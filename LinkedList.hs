-- :script C:\Users\Patrick\HaskellProjects\LinkedList.hs
import System.Process
clear = system "cls"
clear

push(list, value) = value : list

:{
linkedList(value, linkList) =
  let
  listData = fst linkList
  listLink = snd linkList
  in (value,push(listLink,listData))
:}

link = (0, [])
link2 = linkedList(1, link)
link3 = linkedList(2, link2)
link4 = linkedList(3, link3)
link5 = linkedList(4, link4)
