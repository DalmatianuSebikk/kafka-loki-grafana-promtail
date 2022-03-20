FROM grafana/promtail:latest

RUN mkdir /etc/promtail
COPY ./promtail-kafka-config.yaml /etc/promtail/promtail-kafka-config.yaml


CMD ["/usr/bin/promtail", "-config.expand-env", "-config.file=/etc/promtail/config.yml", "-config.file=/etc/promtail/promtail-kafka-config.yaml"]