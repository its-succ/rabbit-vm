# rabbit-vm

Rabbit開発環境の仮想環境を起動するためのVagrant環境です。

# 必須ソフトウェア
* [Git](http://git-scm.com/)
* [Vagrant](https://www.vagrantup.com/)
* [VirtualBox](https://www.virtualbox.org/)

# 事前準備

上記必須ソフトウェアをインストール後、以下のインストールを実行します。

## プラグインのインストール

```
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-cachier
```

# 仮想環境設定

- ip: 192.168.33.13
- 起動 : `vagrant up`
- 停止 : `vagrant halt`
- Node.js 6.x
- PostgreSQL 9.6.1
