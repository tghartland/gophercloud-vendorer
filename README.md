# gophercloud-vendorer

Vendor gophercloud for [local copy in cluster-autoscaler](https://github.com/kubernetes/autoscaler/tree/master/cluster-autoscaler/cloudprovider/magnum/gophercloud).

Vendors only the necessary packages and then replaces the import path to the location in the autoscaler repository.

```
$ ls
Dockerfile  main.go  README.md  run.sh

$ podman build -t gophercloud-vendorer .
...

# Pass the specific git tag version at the end.
$ podman run -it -v `pwd`:/go/src/github.com/tghartland/gophercloud-vendorer:Z gophercloud-vendorer bash run.sh v1.0.0
...

$ ls
Dockerfile  gophercloud  main.go  README.md  run.sh
            ^^^^^^^^^^^
```
