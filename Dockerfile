FROM node:20-slim AS base
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

WORKDIR /app

COPY . .

RUN pnpm i
RUN pnpm build
EXPOSE 8080

CMD ["pnpm", "run", "serve-dashboard"]
