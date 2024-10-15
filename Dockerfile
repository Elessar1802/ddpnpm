FROM node:20-alpine AS builder

WORKDIR /app

COPY . .

RUN pnpm i
RUN pnpm build
EXPOSE 8080

CMD ["pnpm", "run", "serve-dashboard"]
