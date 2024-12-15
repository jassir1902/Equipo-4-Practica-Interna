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

# Volver al usuario jenkins
USER jenkins
