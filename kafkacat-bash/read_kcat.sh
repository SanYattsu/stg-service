#!/bin/bash

kafkacat -C \
    -b rc1a-083hhcof7uqe71hd.mdb.yandexcloud.net:9091 \
    -t stg-service-orders \
    -X security.protocol=SASL_SSL \
    -X sasl.mechanisms=SCRAM-SHA-512 \
    -X sasl.username=producer_consumer \
    -X sasl.password="" \
    -X ssl.ca.location=/mnt/c/ca/YandexInternalRootCA.crt \
    -o beginning
