FROM grafana/grafana

ENV VERSION 7.5.0-b1

USER root

# install sudo/sudoers
RUN apt-get update \
    && apt-get install -y sudo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && echo "grafana ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers

# install plugin
ADD dists/grafana-baas-object-datasource-$VERSION.tar.gz /tmp

RUN cp -r /tmp/grafana-baas-object-datasource-$VERSION /var/lib/grafana/plugins/grafana-baas-object-datasource \
    && chown -R grafana:grafana /var/lib/grafana/plugins/grafana-baas-object-datasource

USER grafana

#ENTRYPOINT /bin/bash
