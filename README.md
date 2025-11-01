## dotvim

#### Custom .vimrc and hopefully useful collection of vim modules
======

#### Install:

Don't install this. Seriously. I'm still working on picking out a nice set of modules that play nice together and don't cause vim to take an hour to load. Maybe later, but for now, use somebody else's collection and save some sanity!

```shell 
git clone https://github.com/adfinem/dotvim
git submodule update --init --recursive
ln -s dotvim/vimrc ~/.vimrc
ln -s dotvim/vim ~/.vim
```
#### Update submodules:

```shell
git submodule update --recursive
```
or
```shell
grunt update
```

