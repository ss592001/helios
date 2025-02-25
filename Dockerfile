# FROM node:21
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY . .
# EXPOSE 3008
# CMD ["node","index.js"]


FROM node:16

# Install specific poppler version
RUN apt-get update && \
    apt-get install -y poppler-utils=0.86.1-0ubuntu1 && \
    apt-get clean

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Ensure port binding
ENV PORT=10000
EXPOSE 10000

CMD ["node", "index.js"]
