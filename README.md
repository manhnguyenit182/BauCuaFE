# BauCuaFE

## Local Environment Contract (Docker Baseline)

Frontend local mode requires these keys in `.env`:

| Key                 | Purpose                          | Example                 |
| ------------------- | -------------------------------- | ----------------------- |
| `VITE_APP_ENV`      | Frontend runtime mode            | `local`                 |
| `VITE_API_BASE_URL` | Backend base URL for FE requests | `http://localhost:8000` |

Quick setup:

1. Copy `.env.example` to `.env`
2. Ensure `VITE_API_BASE_URL` points to the running backend

## Frontend Docker Runtime Baseline

### Commands

1. Validate compose configuration:
   - `docker compose -f docker-compose.local.yml config`
2. Start FE runtime:
   - `docker compose -f docker-compose.local.yml up -d`

Default frontend URL: `http://localhost:5173`

## FE to BE Connectivity Contract

Connectivity documentation:

- `docs/local-startup/connectivity.md`

Integrated startup flow source:

- In BauCuaBE repository: `docs/local-startup/guide.md`

This contract depends on backend readiness first.
Start order remains: BauCuaBE -> BauCuaFE.
