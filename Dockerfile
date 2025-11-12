FROM jetbrains/teamcity-agent:latest

USER root

RUN add-apt-repository ppa:dotnet/dotnet-november-2025-updates
RUN apt-get update && \
	apt-get install -y dotnet-sdk-9.0 && \
	apt-get install -y dotnet-sdk-10.0
