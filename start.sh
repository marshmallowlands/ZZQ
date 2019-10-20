#! /bin/bash
    #一些准备工作
    clear
    
    echo "======"
    echo "===警告：只适用于Debian系Linux操作系统，其他系Linux请勿尝试，否则后果自负。==="
    echo "说明"
    echo "使用此脚本需要互联网连接来使用一些数据\n"
    echo "说明：如果出现BUG或执行错误请务必留言给我，尽量能拍照就拍照，或者发日志文件给我："
    echo "如果想发日志文件给我只需在命令后面再加"
    echo "|tee debug.log"
    echo "竖线也打，不然错误不会记录！"
    echo "建议你把软件下载节点改国内，因为这样下载更快~"
    echo "======"
    echo "\n"
    echo "输入密码，回车继续"
    sudo dd if=/dev/zero of=/swap-file bs=1024K count=128
    mkswap /swap-file
    swapon /swap-file
    read n
    echo "你的互联网IP是："
    curl http://ifconfig.me/ip
    echo "\n"
    sleep 4
    sudo apt update
    sudo apt install git gcc python openjdk-8-jdk apache2 curl 