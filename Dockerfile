# FROM node:21
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY . .
# EXPOSE 3008
# CMD ["node","index.js"]


FROM node:16

# Install poppler-utils without specifying version
RUN apt-get update && \
    apt-get install -y poppler-utils && \
    apt-get clean

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Ensure port binding
ENV PORT=10000
EXPOSE 10000

CMD ["node", "index.js"]
