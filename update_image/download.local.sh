user=$1
ip=$2
proj_dir='bitcoin_image_update'

scp $user@$ip:~/$proj_dir/bitcoin.image.tar.xz ./
./scripts/import_image.sh
ssh $user@$ip "rm -rf ${proj_dir}"
