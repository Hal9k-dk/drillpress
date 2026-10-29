# Signup service

Runs `ghcr.io/hal9k-dk/signup:latest` with Docker (not Podman), on the
existing `nginx_net` network. The reverse proxy publishes `signup.hal9k.dk`
with HTTPS and forwards to container port 8080; the container port is not
published directly on the host. Docker's default `ADDR` is `:8080`.

Set `vault.signup.slack_webhook` in the encrypted drillpress host vault before
deploying. Use a newly rotated Slack incoming webhook: credentials pasted in
chat or otherwise disclosed must be revoked. The application sends signup
personal data to Slack, so restrict channel membership and retention. Container
logs are bounded to 10 MB per file and three files.
