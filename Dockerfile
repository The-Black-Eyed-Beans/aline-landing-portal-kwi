FROM node:lts-alpine
WORKDIR /app
ENV PORT=3007 REACT_APP_MEMBER_DASHBOARD_URL="http://localhost:4200" REACT_APP_API="http://localhost:8080/api"
EXPOSE $PORT
COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY . ./
CMD ["npm", "start"]