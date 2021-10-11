#!/bin/bash

work_dir='/home/liangh/data/ee2gammagamma/PROC_sm_3'
beams=(25 30 35 40 45 45.6 50 55 60 65 70 75 80 85 90 95 100 105 110 115 120 125 130 135  140)
#beams=(25 30)

for beam in ${beams[@]}
do

~/software/MG5_aMC_v2_6_7/bin/mg5_aMC << EOF
launch ${work_dir}
done
set ebeam ${beam}
set nevents 100000
done
EOF
done
