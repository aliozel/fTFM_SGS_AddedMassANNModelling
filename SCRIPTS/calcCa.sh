#!/bin/bash

phis=(0.05 0.1 0.15 0.2 0.3 0.4 0.5 0.6 0.7 0.8)
uAdims=(0.1 0.2 0.3 0.4)
FilX=0.014
ReXs=(3.12 6.3 14.77)

for ReX in ${ReXs[@]}; 
do 
    for PhiX in ${phis[@]};  
    do 
        for uAdim in ${uAdims[@]};
        do
            sed '1d' ../POSTPROCESSED_DATA/pressGradFactorReX${ReX}UstarX${uAdim}FilX${FilX}.dat | awk '{print $1, ( $14 * ( ($2*$3*$12*$13)/($5*$5) ) ) / ( ($3*$4) - ($14) ) }'  > dummy1
            sed '1d' ../POSTPROCESSED_DATA/pressGradFactorReX${ReX}UstarX${uAdim}FilX${FilX}.dat | awk '{print     ( $14 * ( ($2*$3*$12*$13)/($5*$5) ) ) / ( ($2*$3*($13-$12)/$5) - ($14) ) }'  > dummy2
            sed '1d' ../POSTPROCESSED_DATA/pressGradFactorReX${ReX}UstarX${uAdim}FilX${FilX}.dat | awk '{print     ( $14 * ( ($2*$3*$12*$13)/($5*$5) ) ) / ( (($2*$3*($13-$12)/$5)*($12*$2/$5)) - ($14*$12*$2/$5) ) }'  > dummy3
            paste dummy1 dummy2 dummy3 > ../POSTPROCESSED_DATA/constCaReX${ReX}UstarX${uAdim}FilX${FilX}.dat
    	    rm dummy*
        done
    done
done
