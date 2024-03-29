FROM jetbrains/teamcity-agent:latest

USER root

RUN curl https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb --output packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb

RUN apt-get update && \
	apt-get install -y apt-transport-https && \
	apt-get update && \
	apt-get install -y dotnet-sdk-6.0 && \
	apt-get install -y dotnet-sdk-7.0 && \
	apt-get install -y dotnet-sdk-8.0
 
