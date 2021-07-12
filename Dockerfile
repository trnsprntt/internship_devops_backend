FROM centos/nodejs-10-centos7
ENV NODE_ENV=development 

WORKDIR /app
COPY package*.json ./
RUN npm install && npm install -g nodemon

COPY . . 

ENV DATABASE_URL=postgres://localhost:5432/postgres
ENV FRONTEND_URL=http://localhost:3000
ENV WEATHER_API_KEY=3815f2d2474d4bf0fd7527bd628f45cb

EXPOSE 5000
CMD ["sh", "start.sh"]
