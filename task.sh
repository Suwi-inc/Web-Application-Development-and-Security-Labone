#!/bin/bash
# создать пустой текстовый файл, Переместить его в новую директорию и добавить в конец файла текущего дату и фразу "Modified"
# первый параметр - Имя Файла, Второй параметр - Директория
fdir=exampleDirectory
fname=exampleFile.txt
touch $fname
mkdir -p $fdir
mv $fname $(pwd)/$fdir
cd $(pwd)/$fdir
date >> $fname
echo "Modified"  >> $fname
echo "done"
