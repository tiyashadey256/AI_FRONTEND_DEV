# FROM nikolaik/python-nodejs:python3.9-nodejs17-alpine	
FROM node:14

WORKDIR /aiwriter_frontend
COPY . .
# RUN npm install && npm run build
RUN apt-get update && apt-get install python3 -y && apt-get install python3-pip -y
RUN npm install && npm install react-scripts --save
RUN npm run build

CMD ["node", "server.js"]



