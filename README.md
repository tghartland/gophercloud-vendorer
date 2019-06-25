# gophercloud-vendorer

Vendor gophercloud for [local copy in cluster-autoscaler](https://github.com/kubernetes/autoscaler/tree/master/cluster-autoscaler/cloudprovider/magnum/gophercloud).

Vendors only the necessary packages and then replaces the import path to the location in the autoscaler repository.
