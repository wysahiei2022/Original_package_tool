#!/system/bin/bash
function UnpackPayload(){
	mv ./payload.bin ../payload
    echo "解压payload.bin中..."
    cd ../payload
    python3 ./payload.py ./payload.bin ./temp
    echo "解压成功移动至temp目录..."
    cd ../temp
}
function UnpackBr(){
    for brfile in $( find ./tmp -name "**.br" ) ; do
    echo "正在解压$brfile"
    brotli -d ./$brfile ../temp
    done
}
function UnpackDat(){
    if [[ -e system.new.dat ]] ;then
        echo "正在解压system.new.dat"
        python3 $bin/sdat2img.py system.transfer.list system.new.bar ./temp/system.img
    fi

    if [[ -e vendor.new.dat ]] ;then
        echo "正在解压vendor.new.dat"
        python3 $bin/sdat2img.py vendor.transfer.list vendor.new.bar ./temp/vendor.img
    fi

    if [[ -e product.new.dat ]] ;then
        echo "正在解压product.new.dat"
        python3 $bin/sdat2img.py product.transfer.list product.new.bar ./temp/product.img
    fi

    if [[ -e system_ext.new.dat ]] ;then
        echo "正在解压system.new.dat"
        python3 $bin/sdat2img.py system_ext.transfer.list system_ext.new.bar ./temp/system_ext.img
    fi

    if [[ -e odm.new.dat ]] ;then
        echo "正在解压odm.new.dat"
        python3 $bin/sdat2img.py odm.transfer.list odm.new.bar ./temp/odm.img
    fi
}