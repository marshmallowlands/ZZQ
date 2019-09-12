#! /bin/bash
    #一些准备工作
    clear
    echo "======"
    echo "说明"
    echo "使用此脚本需要互联网连接来使用一些数据\n"
    echo "说明：如果出现BUG或执行错误请务必留言给我，尽量能拍照就拍照，或者发日志文件给我："
    echo "如果想发日志文件给我只需在命令后面再加"
    echo "|tee debug.log"
    echo "竖线也打，不然错误可能不会记录！"
    echo "======"
    echo "\n"
    echo "按回车继续"
    read n
    echo "你的互联网IP是："
    curl http://ifconfig.me/ip
    echo "\n"
    sleep 4
