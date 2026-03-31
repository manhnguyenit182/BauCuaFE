FROM node:22-alpine

WORKDIR /app

COPY . .

RUN if [ -f package.json ]; then npm install; else echo "No package.json, skip install."; fi

EXPOSE 5173

CMD ["sh", "-c", "if [ -f package.json ]; then npm run dev -- --host 0.0.0.0 --port 5173; else echo 'No package.json found. Baseline container idle.' && sleep infinity; fi"]
