# Plunger
Pilot cluster to host network-critical infractructure - e.g. DNS, IPAM, Observability, SSO, maybe Vault in the future, etc.

IPs are in gitignored text files under `ips/`.
- `dhcp.ip.txt` is the ip assigned to the pilot node by dhcp before bootstrapping
- `static.ip.txt` is the static IP to give the node
- `endpoint.ip.txt` is the endpoint ip

## Generate short-term kubeconfig
This takes advantage of `topf`'s short kubectl durations and makes it easy to get `kubectl` access to a cluster. Just run it in that cluster's `topf.yaml` directory
```
GIT_ROOT_DIR=$(git rev-parse --show-toplevel)
KUBECONFIG_DIR=$GIT_ROOT_DIR/kubeconfig
if [ ! -d $KUBECONFIG_DIR ]; then mkdir $KUBECONFIG_DIR; fi
topf kubeconfig > $KUBECONFIG_DIR/kubeconfig
export KUBECONFIG=$KUBECONFIG_DIR/kubeconfig
```

## Check node enrollment:
### Talos:
This relies on cluster discovery. If that hasn't bootstrapped yet, it won't appear. 
```bash
talosctl get members
```
This has no reliance on cluster discovery
```bash
talosctl etcd members
```

### Kubernetes
```bash
kubectl get nodes -o wide
```
duh

## Deleting stale node:
``` k delete nodes <node-name>
```
