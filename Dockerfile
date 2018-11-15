FROM grafana/grafana

ENV VERSION 0.0.5

ADD dists/baas-grafana-datasource-$VERSION.tar.gz /tmp

RUN cp -r /tmp/baas-grafana-datasource-$VERSION /var/lib/grafana/plugins/baas-grafana-datasource

#ENTRYPOINT /bin/bash

