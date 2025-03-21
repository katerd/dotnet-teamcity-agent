FROM jetbrains/teamcity-agent:latest

USER root

RUN add-apt-repository ppa:dotnet/backports
RUN apt-get update && \
	apt-get install -y dotnet-sdk-9.0
