FROM node:12-alpine
WORKDIR /app
RUN apk add --no-cache git
RUN git clone https://github.com/sdgandhi/Firestorm.git .
RUN npm install
RUN npm run build
EXPOSE 3009
EXPOSE 1889/udp
ENV PORT=3009
CMD ["npm", "run", "server"]