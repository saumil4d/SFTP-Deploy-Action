FROM debian:stable-slim

LABEL repository="https://github.com/saumil4d/SFTP-Deploy-Action.git"
LABEL maintainer="Saumil Gajjar <saumil@4dinc.ca>"

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y git-ftp
RUN apt-get install -y nodejs

COPY dist/index.js /deploy.js
RUN chmod +x deploy.js

ENTRYPOINT ["node", "../../deploy.js"]
