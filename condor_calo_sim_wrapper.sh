#!/bin/sh

hostname

mkdir EMCalo_build
cd EMCalo_build

cmake -DGeant4_DIR=/usr/local/geant4/lib/Geant4-10.0.4/ ../EMCalo
make

./TrGEMG4 neutron test_n_0 10000

