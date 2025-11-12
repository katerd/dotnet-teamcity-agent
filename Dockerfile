FROM jetbrains/teamcity-agent:latest

USER root

RUN add-apt-repository ppa:dotnet/previews
RUN apt-get update && \
	apt-get install -y dotnet-sdk-10.0
