=== Installation on a new machine

1. Clone this repo

``` bash
git clone git@github.com:grsmv/vimfiles.git ~/.vim
```

2. Create links to config files:

``` bash
ln -s ~/.vim/.gvimrc ~/.gvimrc
ln -s ~/.vim/.gvimrc ~/.vimrc
```

3. Clone Vundle

``` bash
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

4. Install Bundles

``` vim
:BundleInstall
```

Voilà!
