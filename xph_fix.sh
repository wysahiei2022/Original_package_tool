#nfc删除
case $nfc in
    "y")
        echo "开始删除nfc服务"
        for fucknfc in $(find ./out/system -name "*nfc*"); do
            rm -rf $fucknfc >/dev/null 2>&1
        done
        cd $LOCALDIR
        ;;
    "n")
        echo "跳过删除nfc服务"
        ;;
    *)
        echo "输入错误！！！！！你是一个一个一个"
        ;;
esac