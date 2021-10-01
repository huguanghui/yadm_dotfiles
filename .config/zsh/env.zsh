# 2021年 09月 16日 星期四 11:32:48 CST
export PATH="/opt/fullhan/toolchain/arm-fullhanv3-linux-uclibcgnueabi-b6/bin:$PATH"
# 2021年 09月 16日 星期四 15:55:29 CST
export PATH="/opt/fullhan/toolchain/arm-fullhanv2-eabi-b3/bin:$PATH"
export PATH="/opt/mips-gcc472-glibc216-64bit/bin:/usr/local/go/bin:$HOME/bin:$PATH"
export PATH="/opt/hisi-linux/x86-arm/arm-himix100-linux/bin:$PATH" 

export PATH="$HOME/Tools/tools/arm-bcm2709/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin:/usr/local/go/bin:/opt/hisi-linux/x86-arm/arm-himix200-linux/bin:$HOME/bin:$HOME/go/bin:$PATH"
export GOROOT=$(go env GOROOT)
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH/bin
export PKG_CONFIG_PATH=/usr/local/lib64/pkgconfig:$PKG_CONFIG_PATH

export QTDIR=/opt/Qt5.12.6/5.12.6
export PATH=$QTDIR/gcc_64/bin:$PATH
export LD_LIBRARY_PATH=$QTDIR/gcc_64/lib:$LD_LIBRARY_PATH
export QT_VERSION=6.12.6
export QT_DIR=/opt/Qt5.12.6/5.12.6
if [ -n $(which nvim) ]; then
  export EDITOR=nvim
else
  export EDITOR=/usr/bin/vim
fi
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

export http_proxy=127.0.0.1:7890/
export https_proxy=127.0.0.1:7890/
export socks_proxy=127.0.0.1:7891/

export LD_LIBRARY_PATH="$HOME/local/lib:$LD_LIBRARY_PATH"
# export LD_LIBRARY_PATH="$HOME/Tools/scitools/bin/linux64:$HOME/local/lib:$LD_LIBRARY_PATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
