# Plunger
Pilot cluster to host network-critical infractructure - e.g. DNS, IPAM, Observability, SSO, maybe Vault in the future, etc.

IPs are in gitignored text files under `ips/`.
- `dhcp.ip.txt` is the ip assigned to the pilot node by dhcp before bootstrapping
- `static.ip.txt` is the static IP to give the node
- `endpoint.ip.txt` is the endpoint ip