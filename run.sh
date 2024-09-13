#!/bin/bash
# for ubuntu 22.04
DIR_PATH=$( dirname -- "$( readlink -f -- "$0"; )"; )
echo "$DIR_PATH"
export LG_RT_DIR="$DIR_PATH/upmem-legion/runtime"
source $DIR_PATH/upmem-2024.1.0-Linux-x86_64/upmem_env.sh simulator
#source $DIR_PATH/upmem-2024.1.0-Linux-x86_64/upmem_env.sh
cd $DIR_PATH/upmem-test
make -j

#for (( i=1 ; i<= 32 ; i*=2 )); 
#do
#    ./upmem_test -ll:num_dpus $i -b $i
#done


