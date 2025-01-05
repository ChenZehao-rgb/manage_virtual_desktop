# manage_virtual_desktop
1.先更新包管理器相关内容
sudo apt-get update
2.安装xserver-xorg
sudo apt-get install xserver-xorg-core-hwe-18.04
sudo apt-get install xserver-xorg-video-dummy
3.授予脚本权限
chmod +x manage_virtual_desktop.sh
4.开启或关闭虚拟桌面：
./manage_virtual_desktop.sh start
./manage_virtual_desktop.sh stop
