source /appsnew/source/intel2018.sh
processor_num=`cat /proc/cpuinfo| grep "processor"| wc -l`
if [ $# -ge 1 ] &&  [ $1 != auto ]; then
    if [ $1 == cnnl ]; then
        cnword=cnnl
    else
        cnword=cns
    fi
else
    if [ ${processor_num} -eq 56 ] || [ ${processor_num} -eq 28 ]; then
        cnword=cnnl
    else
        cnword=cns
    fi
fi
export PATH=/home/liufeng_pkuhpc/lustre2/lammps-29Oct20/static_build/"$cnword"_install/bin:$PATH 
export LD_LIBRARY_PATH=/home/liufeng_pkuhpc/lustre2/lammps-29Oct20/static_build/"$cnword"_build/plumed_build-prefix/lib:$LD_LIBRARY_PATH 
source /home/liufeng_pkuhpc/lustre2/lammps-29Oct20/static_build/"$cnword"_install/etc/profile.d/lammps.sh
echo "lammps $cnword version"
