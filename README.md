# rancher-cli-k8s
Rancher v2 CLI with kubectl

## Supported tags and respective Dockerfile links
* `v2.2.0`, `latest` ([v2.2.0/Dockerfile](https://github.com/mheiniger/rancher-cli-k8s/blob/cliv2.2.0/Dockerfile))
* `v2.0.2` ([v2.0.2/Dockerfile](https://github.com/mheiniger/rancher-cli-k8s/blob/v2.0.2/Dockerfile))


## Examples:

If you have done a `rancher login` on the host, you can map the `.rancher` folder into the container to share credentials.

`docker run -rm -it -v ~/.rancher:/root/.rancher mheiniger/rancher-cli-k8s:latest rancher kubectl get nodes`

Otherwise, you'll need to login using an API token from your rancher gui. In a build scenario You could create a new API key from your account in the rancher2 GUI and then expose it via environment variable and then:

```
rancher login "$RANCHER_SERVER_URL" -t "$RANCHER_API_TOKEN"
rancher kubectl get nodes
...
```
