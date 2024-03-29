# get current repository latest version
echo "current repository latest version:\n"
git ls-remote --tags https://github.com/tcp-x/rpc-executor-interface.git
# set latest version
Version="v0.0.2"

# cd $projDir
go mod tidy
git add go.mod go.sum shared.go
git commit -am "set version $Version"
git tag $Version
git push origin $Version

