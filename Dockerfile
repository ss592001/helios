# FROM node:21
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY . .
# EXPOSE 3008
# CMD ["node","index.js"]


FROM node:16

# Install system dependencies
RUN apt-get update && apt-get install -y poppler-utils

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3008
CMD ["npm", "start"]
