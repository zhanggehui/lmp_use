#!/bin/bash

export PATH=/appsnew/usr/cmake/cmake-3.14.3/bin:$PATH
source /appsnew/source/intel2018.sh
source /appsnew/source/zlib-1.2.11.sh
source /appsnew/source/Python-3.7.3.sh
export CCFLAGS='-g -O3 -std=c++11'

# 42User_package 33Standard_package
cmake -DBUILD_MPI=yes -DBUILD_OMP=yes  \
-DCMAKE_C_COMPILER=icc -DCMAKE_CXX_COMPILER=icpc -DCMAKE_Fortran_COMPILER=ifort \
-DMPI_C_COMPILER=mpiicc -DMPI_CXX_COMPILER=mpiicpc \
\
-DFFT=mkl \
\
-DPKG_PYTHON=yes \
-DPKG_OPT=yes -DPKG_POEMS=yes -DPKG_COMPRESS=yes\
-DPKG_USER-INTEL=yes \
-DPKG_USER-ATC=yes -DPKG_USER-AWPMD=yes -DPKG_USER-COLVARS=yes \
-DPKG_USER-OMP=yes \
\
-DPKG_ASPHERE=yes -DPKG_BODY=yes -DPKG_CLASS2=yes -DPKG_COLLOID=yes -DPKG_CORESHELL=yes \
-DPKG_DIPOLE=yes -DPKG_GRANULAR=yes -DPKG_KSPACE=yes -DPKG_MANYBODY=yes -DPKG_MC=yes \
-DPKG_MISC=yes -DPKG_MLIAP=yes -DPKG_MOLECULE=yes  -DPKG_MPIIO=yes -DPKG_PERI=yes -DPKG_QEQ=yes \
-DPKG_REPLICA=yes -DPKG_RIGID=yes -DPKG_SHOCK=yes -DPKG_SNAP=yes -DPKG_SPIN=yes -DPKG_SRD=yes \
\
-DPKG_USER-BOCS=yes -DPKG_USER-CGDNA=yes -DPKG_USER-CGSDK=yes \
-DPKG_USER-DIFFRACTION=yes -DPKG_USER-DPD=yes -DPKG_USER-DRUDE=yes \
-DPKG_USER-EFF=yes -DPKG_USER-FEP=yes -DPKG_USER-LB=yes \
-DPKG_USER-MANIFOLD=yes -DPKG_USER-MEAMC=yes -DPKG_USER-MESODPD=yes \
-DPKG_USER-MESONT=yes -DPKG_USER-MGPT=yes -DPKG_USER-MISC=yes \
-DPKG_USER-MOFFF=yes -DPKG_USER-PHONON=yes -DPKG_USER-PTM=yes \
-DPKG_USER-QTB=yes -DPKG_USER-REACTION=yes -DPKG_USER-REAXC=yes \
-DPKG_USER-SDPD=yes -DPKG_USER-SMTBQ=yes -DPKG_USER-SPH=yes \
-DPKG_USER-TALLY=yes -DPKG_USER-UEF=yes -DPKG_USER-YAFF=yes \
\
-DCMAKE_INSTALL_PREFIX=../install \
../cmake && make -j10 && make install

deactivate

#-DBUILD_TOOLS=yes -DBUILD_LAMMPS_SHELL=yes 加入这句会显示找不到readline

#-DPYTHON_EXECUTABLE=/appsnew/usr/python/Python-3.7.3/virtualenv/bin/python3 可以使用环境

#-DPKG_COMPRESS=yes -DPKG_GPU=yes  -DPKG_KIM=yes -DPKG_KOKKOS=yes -DPKG_LATTE=yes -DPKG_MESSAGE=yes 
#-DPKG_MSCG=yes -DPKG_OPT=yes -DPKG_POEMS=yes -DPKG_PYTHON=yes -DPKG_VORONOI=yes  

#-DPKG_USER-ADIOS=yes -DPKG_USER-ATC=yes -DPKG_USER-AWPMD=yes -DPKG_USER-COLVARS=yes 
#-DPKG_USER-H5MD=yes -DPKG_USER-INTEL=yes -DPKG_USER-MOLFILE=yes -DPKG_USER-NETCDF=yes 
#-DPKG_USER-PLUMED=yes -DPKG_USER-OMP=yes -DPKG_USER-QMMM=yes -DPKG_USER-QUIP=yes 
#-DPKG_USER-SCAFACOS=yes -DPKG_USER-SMD=yes -DPKG_USER-VTK=yes  
#-DPKG_=yes
