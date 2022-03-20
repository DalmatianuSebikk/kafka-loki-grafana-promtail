# Kafka & Grafana & Loki & Promtail Docker Container
## _For making it easier_
A multi container docker compose with the configurated services. 

Here is *how to use it*:

- Clone the github repository
- Type `docker-compose up -d` in console (make sure you are in the right directory to do that)
- wait until everything is opened.
- Create your first topic (make sure the topic has the same name as in the promtail-kafka-config.yml)

## Some stuff you need to know

- If the app doesn't work, you should type `docker ps -a` and see if something closed along the way.
- If something crashed, you can see the logs by typing `docker log containerID`
- I don't know yet if the topics are saved when you close the program, but you can create a new image with `docker commit`
- Kafka commands when are typed with `docker exec -it kafkaContainerID sh` and they look the same as in my Notion: https://www.notion.so/Apache-Kafka-956bd8380e784291b6f3123a6fecf023 You can also look at their documentation.: https://hub.docker.com/r/bitnami/kafka/
- When you are adding a Loki database in Grafana, type `http://loki:3100`, because `localhost:3100` doesn't get anywhere. You should use the _Docker DNS Lookup_ when you can do that.



