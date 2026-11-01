apiVersion: v1alpha1
kind: ResolverConfig
nameservers:
    - address: {{ .Data.gatewayIP }}
searchDomains:
    disableDefault: true
hostDNS:
  enabled: true
  forwardKubeDNSToHost: false
