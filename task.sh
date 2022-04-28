#!/bin/bash
# создать пустой текстовый файл, Переместить его в новую директорию и добавить в конец файла текущего дату и фразу "Modified"
# первый параметр - Имя Файла, Второй параметр - Директория
timestamp() { 
date 
}
mkdir -p /home/$USER/newdirexample
touch "example1.txt"

fname="example1.txt"
fdir="/home/$USER/newdirexample"

timestamp >> $fname
echo "Modified"  >> $fname

mv $fname $fdir
echo "done"
