#!/bin/sh

hostname
source /usr/local/root/bin/thisroot.sh
export ROOTSYS=/usr/local/root
export PATH=$PATH:$ROOTSYS/bin
export PATH=$PATH:$ROOTSYS/include
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ROOTSYS/lib

mkdir EMCalo_build
cd EMCalo_build

cmake -DGeant4_DIR=/usr/local/geant4/lib/Geant4-10.0.4/ ../EMCalo
make

./TrGEMG4 neutron test_n_0 10000

