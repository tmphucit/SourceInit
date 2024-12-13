#!/bin/bash

echo "----------------------------------------------------"
echo "Press any key to delete all files with the following extensions:"
echo "*.aps *.idb *.ncp *.obj *.pch *.tmp *.sbr"
echo "Visual C++/.Net junk"
echo "----------------------------------------------------"
read -n 1 -s -r -p "Press any key to continue..."

# Tìm và xóa các file với các phần mở rộng cụ thể
find . -type f \( \
    -name "*.aps" -o \
    -name "*.idb" -o \
    -name "*.ncp" -o \
    -name "*.obj" -o \
    -name "*.pch" -o \
    -name "*.sbr" -o \
    -name "*.tmp" -o \
    -name "*.pdb" -o \
    -name "*.bsc" -o \
    -name "*.ilk" -o \
    -name "*.res" -o \
    -name "*.suo" -o \
    -name "*.dep" -o \
    -name "*.plg" -o \
    -name "*.sln" -o \
    -name "*.txt.bak" -o \
    -name "*.scc" -o \
    -name "*.vcproj" -o \
    -name "*.vcxproj.filters" -o \
    -name "*.vcxproj" -o \
    -name "*.user" -o \
    -name "*.vcproj.vspscc" -o \
    -name ".DS_Store" \
\) -exec rm -f {} +

echo "..."
echo "Deletion completed!"

