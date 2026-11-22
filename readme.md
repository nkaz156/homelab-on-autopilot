# Introduction:
Declaratively-managed kubernetes multicluster config using running Talos managed by TOPF, and Kubernetes managed by FluxCD with a Helmfile bootstrap process:

## Pilot (Plunger)
Hosts infrastructure needed by other systems on my network. Some examples are:
- Talos discovery service
- DNS (Technitium)
- Grafana stack
- SSO (Keycloak)

## Main (Wahoo)
TBD!

## Credits:
This cluster's architecture is heavily inspired by the home-ops community, especially [mirceanton/home-ops](https://github.com/mirceanton/home-ops) and [onedr0p/home-ops](https://github.com/onedr0p/home-ops)
