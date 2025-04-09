user=$1
ip=$2
proj_dir='bitcoin_image_update'

ssh $user@$ip "rm -rf ${proj_dir}"
ssh $user@$ip "mkdir ${proj_dir}"
scp  Dockerfile $user@$ip:~/$proj_dir/
scp  -r scripts  $user@$ip:~/$proj_dir/
scp  update_image/build_export.remote.sh  $user@$ip:~/$proj_dir/
ssh $user@$ip "sudo bash -c 'cd $proj_dir && chmod u+x ./build_export.remote.sh && ./build_export.remote.sh $user $proj_dir'"
