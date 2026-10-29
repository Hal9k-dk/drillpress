# Hugo container deployment

This role builds the upstream `Hal9k-dk/hugo-container` at the pinned source
revision in `/srv/hugo-container/source`, and runs it behind the existing nginx
proxy. The generated website and SSH host keys persist in
`/srv/hugo-container/data`.

The CI public key is configured in the drillpress host vars; it is public data.
Do not put repository private keys or any other secret in vars or Git. The
configured repository URL is HTTPS and public, so it does not need a repository
SSH secret. The container accepts deployment SSH on host port 2222; restrict
access further at the provider firewall if desired.
