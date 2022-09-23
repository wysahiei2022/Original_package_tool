#!/system/bin/bash
function UnpackPayload(){
	mv ./payload.bin ../payload
    echo "解压payload.bin中..."
    cd ../payload
    python3 ./payload.py ./payload.bin ./out
    mv ./payload.bin ../temp
    echo "解压成功移动至temp目录..."
    cd ../temp
}
