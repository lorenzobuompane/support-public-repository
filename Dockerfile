FROM jenkins/ssh-agent:debian-jdk17 as ssh-agent
RUN apk add --no-cache \
    node \
    npm

RUN curl -fsSL https://get.pulumi.com | sh

#COPY --chown=jenkins mykey "${JENKINS_AGENT_HOME}"/.ssh/mykey
