#!/bin/bash
architecture=$(arch)
if [[ ! -d ./tool_bin ]] ;then
     case $architecture in
                x86_64)
              git clone https://github.com/XPHNature/Tool_bin -b Pc
               chmod -R 777 ./Tool_bin/Pc_Bin.7z
               7z x ./Tool_bin/Pc_Bin.7z 
               rm -rf ./Tool_bin
            ;;
                aarch64) 
               git clone https://github.com/XPHNature/Tool_bin -b Phone
               chmod -R 777 ./Tool_bin/Phone_bin.7z
               7z x ./Tool_bin/Phone_bin.7z
               rm -rf ./Tool_bin
            ;;
            *)
            echo "114514"
       esac
fi