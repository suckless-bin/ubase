sudo apt install musl-tools -y
repo=ubase
echo $repo > repo
git clone --depth=1 https://git.suckless.org/$repo/
cp config.mk  $repo/
cp MAKEFILE  $repo/
cd $repo
make dist
make DESTDIR="$PWD/pkg" install
tar -czvf $repo-static.tar.gz -C "$PWD/pkg" .



