#!/bin/bash

# Create POSTPROCESSED_DATA/ folder
mkdir -p ../POSTPROCESSED_DATA/

phis=(0.05 0.1 0.15 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9)
phiMax=0.64
uAdims=(0.1 0.2 0.3 0.4)

#FilXs=(0.0544 0.014)
FilXs=(1.19 0.28 0.091 0.0544 0.014)

cases=(SG1 SG2 SG3)

for case in ${cases[@]}; 
do 
    echo "Case:" ${case}
    if [ "${case}" = "SG1" ]; then
        # Case-SG1
        
        ReX=3.12
        #FilX=0.0544
        rhoGas=1.3
        rhoSolid=1600 
        muGas=2.89e-5
        dp=145e-6
        uTerminal=0.48
        #uSlip=$(awk -v uAdim=$uAdim -v uTerminal=$uTerminal BEGIN'{print uAdim*uTerminal}')
    
    elif [ "${case}" = "SG2" ]; then
        # Case-SG2
        ReX=6.3
        #FilX=0.0544
        rhoGas=2.8
        rhoSolid=1600 
        muGas=2.5e-5
        dp=145e-6
        uTerminal=0.48
        #uSlip=$(awk -v uAdim=$uAdim -v uTerminal=$uTerminal BEGIN'{print uAdim*uTerminal}')

    elif [ "${case}" = "SG3" ]; then
        # Case-SG3
        ReX=14.77
        #FilX=0.0544
        rhoGas=1.3
        rhoSolid=1500 
        muGas=1.84e-5
        dp=210e-6
        uTerminal=1
        #uSlip=$(awk -v uAdim=$uAdim -v uTerminal=$uTerminal BEGIN'{print uAdim*uTerminal}')
    fi

    for uAdim in ${uAdims[@]};
    do
	uSlip=$(awk -v uAdim=$uAdim -v uTerminal=$uTerminal BEGIN'{print uAdim*uTerminal}')

    	for FilX in ${FilXs[@]};
    	do	

    		# Create header for putput file
    		echo -e "phi phiSolid phiGas solidMassFrac \t rhoMixture \t ReynoldsGas \t dragCoefficient \t beta M \t factorPhiS \t factorMass " > ../POSTPROCESSED_DATA/pressGradFactorReX${ReX}UstarX${uAdim}FilX${FilX}.dat 
    
    		# For each phi, compute the ratio
    		for phi in ${phis[@]}; 
    		do   
        		phiSolid=$(awk -v phi=$phi -v phiMax=$phiMax 'BEGIN{print phi*phiMax}')
        		phiGas=$(awk -v phiSolid=$phiSolid BEGIN'{print 1-phiSolid}')
        		solidMassFrac=$(awk -v phiSolid=$phiSolid -v rhoSolid=$rhoSolid -v phiGas=$phiGas -v rhoGas=$rhoGas BEGIN'{print (phiSolid*rhoSolid)/(phiSolid*rhoSolid + rhoGas*phiGas)}')
        		rhoMixture=$(awk -v phiSolid=$phiSolid -v rhoSolid=$rhoSolid -v phiGas=$phiGas -v rhoGas=$rhoGas BEGIN'{print phiSolid*rhoSolid + phiGas*rhoGas}')
        		ReynoldsGas=$(awk -v phiGas=$phiGas -v rhoGas=$rhoGas -v dp=$dp -v uSlip=$uSlip -v muGas=$muGas BEGIN'{print rhoGas*phiGas*dp*uSlip/muGas}')   
        		dragCoefficient=$(awk -v ReynoldsGas=$ReynoldsGas BEGIN'{print 24/ReynoldsGas*(1+ 0.15*(ReynoldsGas)^(0.687))}')
        		beta=$(awk -v dragCoefficient=$dragCoefficient -v rhoGas=$rhoGas -v phiGas=$phiGas -v phiSolid=$phiSolid -v uSlip=$uSlip -v dp=$dp BEGIN'{print 3/4*dragCoefficient*(rhoGas*phiGas*phiSolid*uSlip)/dp*phiGas^(-2.65)}')
    
        		filename="../ReX${ReX}_FilX${FilX}/inputPrediction_PHI=${phi}_Uslip=${uAdim}.txt"
        		M=$(awk -f 'linearRegM.awk' $filename)
        		#C=$(awk -f 'linearRegC.awk' $filename)
        		factorPhiS=$(awk -v phiSolid=$phiSolid -v beta=$beta -v uTerminal=$uTerminal -v phiMax=$phiMax -v M=$M -v rhoSolid=$rhoSolid -v phiSolid=$phiSolid BEGIN'{print (phiSolid-(beta*uTerminal*phiMax*M)/(rhoSolid*9.81*phiSolid))/phiSolid}')
        		factorMass=$(awk -v phiSolid=$phiSolid -v beta=$beta -v uTerminal=$uTerminal -v phiMax=$phiMax -v M=$M -v rhoSolid=$rhoSolid -v phiSolid=$phiSolid -v solidMassFrac=$solidMassFrac BEGIN'{print (phiSolid-(beta*uTerminal*phiMax*M)/(rhoSolid*9.81*phiSolid))/solidMassFrac}')
        
			    echo $phi $phiSolid $phiGas $solidMassFrac $rhoMixture $ReynoldsGas $dragCoefficient $beta $M $factorPhiS $factorMass $rhoGas $rhoSolid >> ../POSTPROCESSED_DATA/pressGradFactorReX${ReX}UstarX${uAdim}FilX${FilX}.dat
		    done
	    done        
    done
done    
