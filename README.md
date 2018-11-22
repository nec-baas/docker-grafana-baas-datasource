Grafana Server : BaaS Datasource 入り
=====================================

BaaS Object Storage Datasource Plugin 入りの Grafana Server Dockerfile です。

利用手順
--------

Docker Hub から image を pull してください。

    $ docker image pull necbaas/grafana-server

以下手順でフォアグラウンドで起動します。

    $ docker container run -it -p 3000:3000 necbaas/grafana-server

起動オプションなどは適宜変更してください。


イメージビルド手順
------------------

本リポジトリを git clone で取り出してください。

本ディレクトリで、以下手順を実行して Docker イメージを作成してください。

    $ docker image build -t necbaas/grafana-server .
