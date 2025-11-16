# promptly-interview
Data engineering technical test




Port 8080 - Airflow API Server / Web UI
URL: http://localhost:8080
Service: airflow-apiserver
Access: Airflow Web UI and REST API
Login: Username and password from your .env (default: airflow/airflow)

Port 29092 - Kafka Broker
URL: localhost:29092
Service: kafka
Access: Kafka broker for external connections (from your host machine)
Use: Connect Kafka clients, producers, consumers

Port 22181 - Zookeeper
URL: localhost:22181
Service: zookeeper
Access: Zookeeper client port
Use: Zookeeper management (rarely needed directly)

Port 5555 - Flower (Optional - requires --profile flower)
URL: http://localhost:5555
Service: flower
Access: Celery monitoring UI
Start with: docker-compose --profile flower up

Kafka Connect (Debezium):
Port 8083 - Kafka Connect REST API
URL: http://localhost:8083
Service: kafka-connect
Access: Kafka Connect REST API for managing Debezium connectors

Kafka UI:
Port 8090 - Kafka UI
URL: http://localhost:8090
Service: kafka-ui
Access: Web UI to browse Kafka topics, messages, consumer groups