package main

import (
	_ "github.com/gophercloud/gophercloud"
	_ "github.com/gophercloud/gophercloud/openstack"
	_ "github.com/gophercloud/gophercloud/openstack/containerinfra/apiversions"
	_ "github.com/gophercloud/gophercloud/openstack/containerinfra/v1/clusters"
	_ "github.com/gophercloud/gophercloud/openstack/containerinfra/v1/nodegroups"
	_ "github.com/gophercloud/gophercloud/openstack/identity/v3/extensions/trusts"
	_ "github.com/gophercloud/gophercloud/openstack/orchestration/v1/stackresources"
	_ "github.com/gophercloud/gophercloud/openstack/orchestration/v1/stacks"
	_ "github.com/gophercloud/gophercloud/testhelper"
)

func main() {
}
