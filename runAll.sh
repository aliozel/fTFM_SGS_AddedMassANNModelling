#!/bin/bash

# Working directory
WORKDIR=$PWD

# Use trained NN or perform test-training
trainedNN=true
if [ "trainedNN" = false ] ; then
    echo 'Perform NN training using 0.1% of dataset'
    # Run ANN+Bayesian optimization code
    cd codeANNBayesian
    python trainNetwork2NNs.py
fi

# Create tabulated data of ANN predictions
cd $WORKDIR
if [ "trainedNN" = false ] ; then
    sed "s/FILENAMECHAR/optimizeNetwork2NNs_epochs=30_evals=500scaling=auto/g" createTabulatedANNPreds.pyDefault > createTabulatedANNPreds.py
else
    sed "s/FILENAMECHAR/optimizeNetwork2NNsAllData/g" createTabulatedANNPreds.pyDefault > createTabulatedANNPreds.py
fi
# You can modify line-96 to have finer resolution tabulated data
python createTabulatedANNPreds.py

# Post-process tabulated data
cd $WORKDIR/SCRIPTS
bash comparePressGradFactorRepUstarFil.sh
bash calcCa.sh 

# Plot figures
mkdir -p ../FIGURES
cd $WORKDIR/FIGURES
bash plotFigs.plt

# Generate report 
cd $WORKDIR/TEX
latex report.tex
latex report.tex
dvipdf report.dvi


