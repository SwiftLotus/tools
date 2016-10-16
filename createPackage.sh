
# you can also use swift package init --type executable to init a package
dir=$1
package=$2
cd $dir
mkdir $package
cd $package
touch Package.swift
echo "import PackageDescription

let package = Package(
    name: \"${package}\",
    dependencies: []
)" >> Package.swift
mkdir Sources
cd Sources
touch main.swift
echo "import Glibc
print(\"Hello, world!\")" >> main.swift
