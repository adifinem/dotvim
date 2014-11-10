#!/bin/bash

curl -# -o vim/plugin/tetris.vim http://www.vim.org/scripts/download_script.php?src_id=650
curl -# -o vim/plugin/matrix.vim http://www.vim.org/scripts/download_script.php?src_id=18650
curl -# -o vim/plugin/hjkl.vim http://www.vim.org/scripts/download_script.php?src_id=19242
curl -# -o vim/plugin/gol.vim http://www.vim.org/scripts/download_script.php?src_id=1119
curl -# -o vim/plugin/mosalisp.vim http://www.vim.org/scripts/download_script.php?src_id=7526
curl -# -o vim/plugin/nibble.zip http://www.vim.org/scripts/download_script.php?src_id=6711
curl -# -o vim/plugin/sodoku.vim http://www.vim.org/scripts/download_script.php?src_id=15641
curl -# -o vim/plugin/conque.zip https://conque.googlecode.com/files/conque_2.3.zip
unzip vim/plugin/nibble.zip -d vim/
rm vim/plugin/nibble.zip
unzip vim/plugin/conque.zip -d vim/
rm vim/plugin/conque.zip


# git submodule update --init --recursive

