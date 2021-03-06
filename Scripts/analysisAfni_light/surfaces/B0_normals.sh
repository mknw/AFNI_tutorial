#!/usr/bin/env bash

INDIR=$1
OUTDIR=$2
B01=$3
B02=$4
B03=$5

if [ -z "$1" ]
then
echo 'computes angle between B0 and normals to surface'
echo 'Inputs:'
echo 'INDIR=$1, directory where the normals are stored (computed from metricSurfaceMap.sh with -node_normals flag)'
echo 'OUTDIR=$2, directory where save'
echo 'B01=$3, B0 direction'
echo 'B02=$4, B0 direction'
echo 'B03=$5, B0 direction'
exit 1
fi

Rscript $AFNI_TOOLBOXDIRSURFACES/B0_normals.R $INDIR $OUTDIR $B01 $B02 $B03 $AFNI_TOOLBOXDIR
