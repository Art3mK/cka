# Namespaces

- namespace per project + networkPolicies
- names of resources need to be unique within a namespace, but not across namespaces.

Kubernetes starts with three initial namespaces:
* default: The default namespace for objects with no other namespace
* kube-system: The namespace for objects created by the Kubernetes system
* kube-public: This namespace is created automatically and is readable by all users (including those not authenticated). This namespace is mostly reserved for cluster usage, in case that some resources should be visible and readable publicly throughout the whole cluster. The public aspect of this namespace is only a convention, not a requirement.

## namespace setting for requests

- `kubectl --namespace=%namespace% get pods`
- `kubectl config set-context $(kubectl config current-context) --namespace=%namespace%`

## not all objects are in a namespace

```
# In a namespace
$ kubectl api-resources --namespaced=true

# Not in a namespace
$ kubectl api-resources --namespaced=false
```