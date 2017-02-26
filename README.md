# ruby-datascience-examples

ここにはRubyでデータサイエンスを行うための

- 環境構築方法
- 活用のための実例

がまとめてあります。また

- 現状どういった機能が不足しているか

も実例中に付記してあります。

このプロジェクトは「Rubyを用いた初等統計解析の整備と構築」というタイトルで[2016年度Ruby Association開発助成](http://www.ruby.or.jp/ja/news/20161121.html)を受け行いました。

## dockerを用いた試用方法

## Bash on Windows での試用方法

### Jupyter の install

```
sudo apt install wget python3
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
sudo pip3 install -U jupyter
```

### iruby の install

```
sudo apt install libtool libffi-dev ruby ruby-dev make git libzmq-dev autoconf pkg-config
git clone https://github.com/zeromq/czmq
cd czmq && ./autogen.sh && ./configure && make
sudo make install
sudo gem install specific_install
sudo gem specific_install https://github.com/SciRuby/iruby.git
iruby register --force
```

### この repository のcloneとJupyter notebookによる読み込み

```
git clone git://github.com/sciruby-jp/ruby-datascience-examples
jupyter-notebook
```
最後に `localhost:8888` をウェブブラウザで開いてください．

## Windows での試用方法

## Mac での試用方法

## Ubuntu Linux での試用方法

## 含まれる実例リスト

