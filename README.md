Grafana Server : BaaS Datasource 入り
=====================================

BaaS Grafana Datasource Plugin 入りの Grafana Server Dockerfile です。

使い方
------

本ディレクトリで、以下手順で Docker イメージを作成してください。

    $ docker build -t necbaas/grafana-server .
    
以下手順で起動します。

    $ docker run -it -p 3000:3000 necbaas/grafana-server
