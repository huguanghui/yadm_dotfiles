export PATH=$PATH:$HOME/Tools/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin:/usr/local/go/bin:/opt/hisi-linux/x86-arm/arm-himix200-linux/bin
export GOROOT=$(go env GOROOT)
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH/bin
export PKG_CONFIG_PATH=/usr/local/lib64/pkgconfig:$PKG_CONFIG_PATH

export QTDIR=/opt/Qt5.12.6/5.12.6
export PATH=$QTDIR/gcc_64/bin:$PATH
export LD_LIBRARY_PATH=$QTDIR/gcc_64/lib:$LD_LIBRARY_PATH
export QT_VERSION=6.12.6
export QT_DIR=/opt/Qt5.12.6/5.12.6
export EDITOR=/usr/bin/vim
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

export LD_LIBRARY_PATH="$HOME/local/lib:$LD_LIBRARY_PATH"
# export LD_LIBRARY_PATH="$HOME/Tools/scitools/bin/linux64:$HOME/local/lib:$LD_LIBRARY_PATH"
