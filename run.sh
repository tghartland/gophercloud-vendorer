# exit on error
set -e

VERSION=$1
echo "Going to vendor version $VERSION"

echo "Creating gopath"
mkdir gopath
GOPATH=$(pwd)/gopath

echo "Getting dependencies"
go get gopkg.in/yaml.v2

echo "Getting gophercloud"
go get github.com/gophercloud/gophercloud

pushd gopath/src/github.com/gophercloud/gophercloud
git checkout tags/${VERSION}
popd

mkdir -p gopath/src/github.com/tghartland/gophercloud-vendorer/
cp main.go gopath/src/github.com/tghartland/gophercloud-vendorer/

pushd gopath/src/github.com/tghartland/gophercloud-vendorer/

echo "Vendoring with godep"
godep save github.com/tghartland/gophercloud-vendorer/

popd

echo "Copying out vendored gophercloud"
cp -r gopath/src/github.com/tghartland/gophercloud-vendorer/vendor/github.com/gophercloud/gophercloud/ .

echo "Replace import path in gophercloud"
pushd gophercloud
grep -l -R --include=*.go github.com/gophercloud/gophercloud | xargs sed -i 's github.com/gophercloud k8s.io/autoscaler/cluster-autoscaler/cloudprovider/magnum g'
rm go.mod go.sum
popd

echo "Removing gopath"
rm -rf gopath

echo "Done"
