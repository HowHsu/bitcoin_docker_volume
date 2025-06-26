export TSAN_OPTIONS="external_symbolizer_path=/usr/lib/llvm-18/bin/llvm-symbolizer:second_deadlock_stack=1"
mkdir -p /mnt/tmp
mount -t tmpfs -o size=4g tmpfs /mnt/tmp/
build/test/functional/test_runner.py --cachedir=/mnt/tmp/cache --tmpdir=/mnt/tmp

