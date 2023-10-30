FROM jenkins/ssh-agent:alpine-jdk17 as ssh-agent

RUN apk add --no-cache \
    npm \
    curl \
    libc6-compat

RUN curl -fsSL https://get.pulumi.com | sh

ENV PATH=$PATH:/root/.pulumi/bin

RUN pulumi version

#COPY --chown=jenkins mykey "${JENKINS_AGENT_HOME}"/.ssh/mykey
