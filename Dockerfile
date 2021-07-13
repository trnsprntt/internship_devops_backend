FROM centos/nodejs-10-centos7
ENV NODE_ENV=development 
WORKDIR /app
COPY . . 
RUN npm install && npm install -g nodemon
EXPOSE 5000
CMD ["sh", "start.sh"]
