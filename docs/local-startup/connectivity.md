# FE to BE Connectivity Contract

## Preconditions

- Backend stack is running and readiness passes
- VITE_API_BASE_URL points to local backend base URL

## Canonical Values

- Backend base URL: http://localhost:8000
- Readiness path: /health
- Full readiness URL: http://localhost:8000/health

## Validation Steps

1. Confirm frontend env value:
   - VITE_API_BASE_URL=http://localhost:8000
2. Confirm backend readiness:
   - curl http://localhost:8000/health
3. Start frontend runtime and open app URL
4. Trigger one FE request to BE (health or equivalent)

## Expected Pass Output

- FE resolves API base URL without malformed URL errors
- BE readiness endpoint responds with status ok
- FE request succeeds (HTTP 200 class)

## Expected Fail Output

- Invalid base URL format or unresolved host
- Network failure connecting to localhost:8000
- Non-ready BE returns error payload

## Failure Guidance

- Re-check VITE_API_BASE_URL format
- Re-check backend readiness before FE checks
- Review backend troubleshooting matrix for container and port issues
