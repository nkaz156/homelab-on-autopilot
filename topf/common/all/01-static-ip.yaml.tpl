{{ if .Node.Data.staticIP }}
apiVersion: v1alpha1
kind: LinkConfig
name: {{ .Node.Data.interface }}
addresses:
    - address: {{ .Node.Data.staticIP }}
routes:
    - gateway: {{ .Data.gatewayIP }}
{{ end }}
