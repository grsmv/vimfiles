### Installation on a new machine

_1_ Clone this repo

``` bash
git clone git@github.com:grsmv/vimfiles.git ~/.vim
```

_2_ Create links to config files:

``` bash
ln -s ~/.vim/.gvimrc ~/.gvimrc
ln -s ~/.vim/.gvimrc ~/.vimrc
```

_3_ Clone Vundle

``` bash
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

_4_ Install Bundles

``` vim
:BundleInstall
```

Voilà!
