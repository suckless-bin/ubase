sudo apt install musl-tools -y
repo=ubase
echo $repo > repo
git clone --depth=1 https://git.suckless.org/$repo/
cp config.mk  $repo/
cp Makefile  $repo/
cd $repo
make DESTDIR="$PWD/pkg" ubase-box-install
tar -czvf $repo-static.tar.gz -C "$PWD/pkg" .



