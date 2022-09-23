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