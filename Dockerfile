FROM grafana/grafana

ENV VERSION 7.5.0-b1

ADD dists/grafana-baas-object-datasource-$VERSION.tar.gz /tmp

RUN cp -r /tmp/grafana-baas-object-datasource-7.5.0-b1 /var/lib/grafana/plugins/grafana-baas-object-datasource

#ENTRYPOINT /bin/bash
