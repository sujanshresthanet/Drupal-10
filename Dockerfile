FROM drupal:9-apache

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y default-mysql-client && \
    apt-get install -y unzip && \
    apt-get install -y nano less && \
    apt-get install -y git

RUN apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*