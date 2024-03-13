#!/bin/bash
rm logstash/config/*

rm logstash/pipeline/*

rm logstash/templates/*

sudo rm -rf certs

sudo mkdir certs

echo '- pipeline.id: main
  path.config: "/usr/share/logstash/pipeline"' > logstash/config/pipelines.yml

echo "input {
  beats {
    port => 5044
  }
}

output {
  stdout {
    codec => rubydebug
  }
}" > logstash/pipeline/logstash.conf