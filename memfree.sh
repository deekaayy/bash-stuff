#script for freeing up some memoty

echo "Memory Status before RAM free-up"

free -h
sudo sync
sudo sh -c 'echo 1 >/proc/sys/vm/drop_caches'
sudo sh -c 'echo 2 >/proc/sys/vm/drop_caches'
sudo sh -c 'echo 3 >/proc/sys/vm/drop_caches'

sudo swapoff -a
sudo swapon -a

echo "Memory Status after RAM free-up"
free -h
