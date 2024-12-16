FROM jenkins/jenkins:lts

# Instalar plugins necesarios
USER root
RUN jenkins-plugin-cli --plugins \
    git \
    pipeline-model-definition \
    workflow-aggregator \
    docker-workflow \
    blueocean \
    credentials-binding

# Instalar Docker y Docker Compose
RUN apt-get update && apt-get install -y \
    docker.io \
    docker-compose && \
    apt-get clean

# Agregar al usuario Jenkins al grupo docker para acceso a Docker
RUN usermod -aG docker jenkins

# Volver al usuario Jenkins
USER jenkins