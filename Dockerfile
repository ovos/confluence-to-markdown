FROM node:10

RUN apt-get update && apt-get install -y pandoc && apt-get clean

RUN npm install -g yarn && npm install -g docsify

RUN apt-get update && apt-get install -y unzip zip && apt-get clean

ENTRYPOINT ["/app/entrypoint.sh"]