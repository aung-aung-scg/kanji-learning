FROM node:20-alpine

WORKDIR /app

ENV NODE_OPTIONS=--dns-result-order=ipv4first

COPY package.json package-lock.json ./
RUN npm install

COPY . .

EXPOSE 3001
CMD ["npm", "run", "dev"]
