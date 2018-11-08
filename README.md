Grafana Server : BaaS Datasource 入り
=====================================

BaaS Grafana Datasource Plugin 入りの Grafana Server Dockerfile です。

使い方
------

本リポジトリを git clone で取り出してください。

本ディレクトリで、以下手順を実行して Docker イメージを作成してください。
Docker イメージ名は "necbaas/grafana-server" になります。

    $ docker build -t necbaas/grafana-server .
    
以下手順でフォアグラウンドで起動します。

    $ docker run -it -p 3000:3000 necbaas/grafana-server

起動オプションなどは適宜変更してください。
