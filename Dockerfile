# Usa l'immagine ufficiale di Zookeeper
FROM confluentinc/cp-zookeeper:latest

# Espone la porta per la comunicazione con Kafka
EXPOSE 2181

# Variabili di ambiente per la configurazione di Zookeeper
ENV ZOOKEEPER_CLIENT_PORT=2181
ENV ZOOKEEPER_TICK_TIME=2000
ENV ZOOKEEPER_INIT_LIMIT=5
ENV ZOOKEEPER_SYNC_LIMIT=2

# Comando di avvio per Zookeeper
CMD ["/etc/confluent/docker/run"]
