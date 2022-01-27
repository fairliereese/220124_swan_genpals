## Data download
```bash
xargs -L 1 curl -O -J -L < files.txt
```

## Rename files based on metadata
```bash
mv ENCFF513MSS.h5ad sc_mb.h5ad
mv ENCFF033NVO.h5ad sn_mb.h5ad
mv ENCFF362NGZ.h5ad sn_mt.h5ad
mv ENCFF638OPO.gtf.gz sc_mb.gtf.gz
mv ENCFF816NGZ.gtf.gz sn_mb.gtf.gz
mv ENCFF692TSX.gtf.gz sn_mt.gtf.gz
```

## Unzip
```bash
gunzip *gtf.gz
```
