FROM node:18-slim

WORKDIR /app

COPY package.json .

RUN npm install -f

COPY . .

RUN npm run build

# EXPOSE 5001
EXPOSE 5001

CMD ["npm", "start"]