# Introduction:
Declaratively-managed kubernetes multicluster config using running Talos managed by TOPF, and Kubernetes managed by FluxCD with a Helmfile bootstrap process:

## Pilot (Plunger)
Hosts infrastructure needed by other computers. Some examples are:
- DNS (Technitium)
- Grafana stack
- SSO (Keycloak)

## Main (Wahoo)


## Credits:
This cluster's architecture is heavily inspired by [onedr0p/home-ops](https://github.com/onedr0p/home-ops)