#!/bin/bash
# создать пустой текстовый файл, Переместить его в новую директорию и добавить в конец файла текущего дату и фразу "Modified"
# первый параметр - Имя Файла, Второй параметр - Директория
timestamp() { 
date 
}
if [[ -f $1 ]] || [[ -d $2 ]]; 
then
  touch $1
  timestamp >> $1
  echo "Modified"  >> $1
  mv $1 $2
else
echo "incorrect number of parameters"

fi
echo "done"
