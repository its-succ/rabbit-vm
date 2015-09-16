# gas-vm

Rabbit開発環境の仮想環境を起動するためのVagrant環境です。

# 必須ソフトウェア
* [Git](http://git-scm.com/)
* [Vagrant](https://www.vagrantup.com/)
* [VirtualBox](https://www.virtualbox.org/)
* [CHfDK for windows](http://downloads.getchef.com/chef-dk/windows/#/)

# 事前準備

上記必須ソフトウェアをインストール後、以下のインストールを実行します。

## ボックスファイルのインストール

```
vagrant box add opscode-ubuntu-14.04 http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-14.04_chef-provisionerless.box
```

## プラグインのインストール

```
vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-cachier
```

## cookbookのインストール

### mac or linux

#### ruby

rbenvなどでrubyのバージョンを1.9.3以上もしくは2系にしておく必要があります。

```
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

source ~/.bash_profile

rbenv install 2.1.5
rbenv local 2.1.5
```

#### cookbook

```
git clone git@github.com:its-succ/rabbit-vm.git

cd rabbit-vm
gem install bundler
bundle install
bundle exec berks vendor ./cookbooks
```

### windows

```
git clone git@github.com:its-succ/rabbit-vm.git

cd rabbit-vm
berks vendor cookbooks
```

# 仮想環境設定

- ip: 192.168.33.13
- 起動 : `vagrant up`
- 停止 : `vagrant halt`
- mongodb3
- Node.js
  - bower
  - grunt
