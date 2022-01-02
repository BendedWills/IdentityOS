export LFS=$DIST_ROOT/root

if ! [ -f $DIST_ROOT ]; then
    echo "$DIST_ROOT does not exist!"
    exit 1
fi

if ! [ -f $LFS ]; then
    echo "$LFS does not exist!"
    exit 1
fi

echo "DIST_ROOT=${DIST_ROOT:?}"
echo "LFS=${LFS:?}"

mkdir -p $LFS/sources

for f in $(cat packages.txt)
