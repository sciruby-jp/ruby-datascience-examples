# ruby-datascience-examples

ここにはRubyでデータサイエンスを行うための

- 環境構築方法
- 活用のための実例

がまとめてあります。また

- 現状どういった機能が不足しているか

も実例中に付記してあります。

このプロジェクトは「Rubyを用いた初等統計解析の整備と構築」というタイトルで[2016年度Ruby Association開発助成](http://www.ruby.or.jp/ja/news/20161121.html)を受け行いました。

## Bash on Windows, Ubuntu Linux 16.04 での試用方法

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
sudo gem install specific_install cztop daru rbplotly
sudo gem specific_install https://github.com/SciRuby/iruby.git
iruby register --force
```

### この repository のcloneとJupyter notebookによる読み込み

```
git clone git://github.com/sciruby-jp/ruby-datascience-examples
jupyter-notebook ruby-datascience-examples
```
最後に `localhost:8888` をウェブブラウザで開いてください．

## Mac での試用方法

### Jupyter の install

macでは[miniconda](https://conda.io/miniconda.html)を使ってJupyter notebookをinstallします。

```
wget https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
bash Miniconda3-latest-MacOSX-x86_64.sh
~/miniconda3/bin/conda install notebook
```

### iruby の install

[homebrew](https://brew.sh/)をinstall後下記のコマンドを実行します。

```
brew install rbenv automake gmp libtool wget
rbenv install 2.4.0
rbenv global 2.4.0
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

brew install zeromq --HEAD
brew install czmq --HEAD
sudo gem install cztop

gem install specific_install daru rbplotly
gem specific_install https://github.com/SciRuby/iruby.git
iruby register --force
```

### この repository のcloneとJupyter notebookによる読み込み

```
git clone git://github.com/sciruby-jp/ruby-datascience-examples
jupyter-notebook ruby-datascience-examples
```

最後に `localhost:8888` をウェブブラウザで開いてください．

## Docker での試用方法

Dockerをinstall後下記のコマンドを実行します。

```
docker pull sciruby/ruby-datascience-examples
docker run -d -p 8888:8888 sciruby/ruby-datascience-examples start-notebook.sh --NotebookApp.token=''
```

最後に `localhost:8888` をウェブブラウザで開いてください．

## 含まれる実例リスト

