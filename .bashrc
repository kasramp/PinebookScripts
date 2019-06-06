# Pinebook specific .bashrc aliases
# Paste these lines after copying the files from mydotfiles
alias scripts='cd /usr/local/sbin/'
alias java='/home/kixz/Private/jdk1.8.0_191/bin/java'
alias javac='/home/kixz/Private/jdk1.8.0_191/bin/javac'
alias mmcmount='udisksctl mount --block-device /dev/mmcblk0p2'
alias mmc='cd /media/kixz/rootfs'
alias pip='pip3'
alias mpv='sh /home/kixz/scripts/mpv_play.sh'
alias vscode='code-oss'
JAVA_HOME=/home/kixz/Private/jdk1.8.0_191/
export JAVA_HOME
PATH=$JAVA_HOME/bin:$PATH
export PATH 

