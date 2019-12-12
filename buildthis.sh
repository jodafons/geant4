
mkdir build
cd build
cmake -DGEANT4_INSTALL_DATA=ON ..
make -j30
cp ../scripts/geant4_10.5.1.sh geant4.sh
source geant4.sh
cd ..



ls

