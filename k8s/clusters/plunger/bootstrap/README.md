# Bootstrap

## Set correct kubeconfig
[set kubeconfig](../../../../topf/plunger/README.md)

## Apply CRDs
when implemented

## Apply Helmfile
```bash
helmfile apply
```

## helm-diff complications:
Install helm-diff as a helm plugin, following the steps from the [helm-diff repo](https://github.com/databus23/helm-diff)

helmfile uses an older version of gpupg to validate the file. I did:
```sh
gpg --export EA17A2A206AFF8CD > ~/.gnupg/pubring.gpg
```
after installing the author's gpg key and was able to successfully install helm-diff
