#!/bin/bash

# Working directory
WORKDIR=$PWD

# Remove ANN+Bayesian optimization code result folder
cd codeANNBayesian
rm -rf optimizeNetwork2NNs_epochs=30_evals=500scaling=auto

# Remove tabulated data of ANN predictions folders
cd $WORKDIR
rm createTabulatedANNPreds.py
rm -rf ./ReX*

# Remove post-processed data folder
cd $WORKDIR
rm -rf ./POSTPROCESSED_DATA

# Remove figrues folder
cd $WORKDIR
rm -rf FIGURES