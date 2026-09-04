FROM node:20-alpine
WORKDIR /app
COPY index.html .
RUN npm install -g serve
EXPOSE 3000
CMD ["sh", "-c", "serve -s . -l ${PORT:-3000}"]
