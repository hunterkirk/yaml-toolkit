FROM node:bullseye-slim
RUN apt-get update -y -q
RUN apt-get install -y python3-pip shellcheck
RUN pip3 install yamale yq yamllint
RUN mkdir /yaml-toolkit
WORKDIR /yaml-toolkit
RUN npm install -g yaml-validator
ENTRYPOINT ["/bin/bash"]
