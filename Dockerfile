FROM node:alpine

RUN npm install -g truffle

RUN mkdir -p /app/logs
WORKDIR /app

COPY . .

RUN echo "MLSINSTALL -> Grant +x to scripts ..." | tee -a /app/logs/setup.log
RUN chmod +x /app/entrypoint.sh

RUN echo "MLSINSTALL -> Setup Complete!" | tee -a /app/logs/setup.log

ENTRYPOINT ["./entrypoint.sh"]