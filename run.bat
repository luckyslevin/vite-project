@echo off

if "%1" == "install" (
  docker-compose run --rm app "npm i -g pnpm && pnpm install"
)

if "%1" == "logs" (
  docker-compose logs -f
)

if "%1" == "up" (
  docker-compose up -d --force-recreate app
)
